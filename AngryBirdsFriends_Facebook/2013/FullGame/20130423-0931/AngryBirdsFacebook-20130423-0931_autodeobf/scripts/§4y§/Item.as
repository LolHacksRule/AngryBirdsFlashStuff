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
         super();
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
         var _loc1_:Class = §?q§.§ q§("Inventory_Item_" + this.§&N§);
         return new _loc1_();
      }
   }
}
