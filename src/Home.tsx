import { format } from "date-fns";
const Home = () => {
  const today = new Date();
  const formattedDate = format(today, "yyyy-MM-dd a");
  console.log("first",formattedDate)
  return <div className="text-3xl bg-amber-500">Home</div>;
};

export default Home;
