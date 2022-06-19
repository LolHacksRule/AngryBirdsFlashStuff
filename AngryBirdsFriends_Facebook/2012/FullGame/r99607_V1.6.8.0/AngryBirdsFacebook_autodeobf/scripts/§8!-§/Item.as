package §8!-§
{
   import com.rovio.assets.§#!J§;
   import flash.display.MovieClip;
   
   public class Item
   {
       
      
      public var §4W§:String = "";
      
      public var sId:String;
      
      public var mName:String = "";
      
      public var §;F§:String = "";
      
      public var §3c§:String = "";
      
      public function Item()
      {
         super();
      }
      
      public function get category() : String
      {
         return this.§;F§;
      }
      
      public function §,!J§() : MovieClip
      {
         var _loc1_:Class = §#!J§.§1!Y§("Inventory_Item_" + this.§4W§);
         return new _loc1_();
      }
   }
}
