package §^"K§
{
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   
   public class Item
   {
       
      
      public var mId:String = "";
      
      public var sId:String;
      
      public var §-#3§:String = "";
      
      public var §7#n§:String = "";
      
      public var §0!^§:String = "";
      
      public var §0G§:String = "";
      
      public function Item()
      {
         super();
      }
      
      public function get category() : String
      {
         return this.§7#n§;
      }
      
      public function get categorySID() : String
      {
         return this.§0G§;
      }
      
      public function §^#&§() : MovieClip
      {
         var _loc1_:Class = §=@§.§9!x§("Inventory_Item_" + this.mId);
         return new _loc1_();
      }
   }
}
