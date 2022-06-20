package §%#!§
{
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   
   public class Item
   {
       
      
      public var mId:String = "";
      
      public var sId:String;
      
      public var §;!p§:String = "";
      
      public var §8!G§:String = "";
      
      public var §`$5§:String = "";
      
      public var §9"-§:String = "";
      
      public function Item()
      {
         super();
      }
      
      public function get category() : String
      {
         return this.§8!G§;
      }
      
      public function get categorySID() : String
      {
         return this.§9"-§;
      }
      
      public function §,l§() : MovieClip
      {
         var _loc1_:Class = §+$#§.§["`§("Inventory_Item_" + this.mId);
         return new _loc1_();
      }
   }
}
