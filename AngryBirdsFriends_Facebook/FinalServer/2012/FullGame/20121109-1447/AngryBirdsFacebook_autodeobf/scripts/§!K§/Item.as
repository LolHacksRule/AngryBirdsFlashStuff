package §!K§
{
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   
   public class Item
   {
       
      
      public var §;!Y§:String = "";
      
      public var sId:String;
      
      public var mName:String = "";
      
      public var §[C§:String = "";
      
      public var §=!q§:String = "";
      
      public function Item()
      {
         super();
      }
      
      public function get category() : String
      {
         return this.§[C§;
      }
      
      public function §@!j§() : MovieClip
      {
         var _loc1_:Class = §8B§.§6"C§("Inventory_Item_" + this.§;!Y§);
         return new _loc1_();
      }
   }
}
