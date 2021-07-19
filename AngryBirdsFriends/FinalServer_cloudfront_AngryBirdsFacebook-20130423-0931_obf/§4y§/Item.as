package §4y§
{
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   
   public class Item
   {
       
      
      public var §&N§:String = "";
      
      public var sId:String;
      
      public var mName:String = "";
      
      public var §;"V§:String = "";
      
      public var §5!L§:String = "";
      
      public var §6b§:String = "";
      
      public function Item()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function get category() : String
      {
         return this.§;"V§;
      }
      
      public function get categorySID() : String
      {
         return this.§6b§;
      }
      
      public function §>N§() : MovieClip
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§?q§);
         §§push("Inventory_Item_");
         if(_loc2_)
         {
            §§push(§§pop() + this.§&N§);
         }
         var _loc1_:Class = §§pop().§ q§(§§pop());
         return new _loc1_();
      }
   }
}
