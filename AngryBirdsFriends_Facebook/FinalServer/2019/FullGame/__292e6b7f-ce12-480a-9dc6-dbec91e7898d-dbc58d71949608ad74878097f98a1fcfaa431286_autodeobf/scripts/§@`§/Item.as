package §@`§
{
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   
   public class Item
   {
       
      
      public var mId:String = "";
      
      public var sId:String;
      
      public var §&$"§:String = "";
      
      public var §'!P§:String = "";
      
      public var §^F§:String = "";
      
      public var §@!P§:String = "";
      
      public function Item()
      {
         super();
      }
      
      public function get category() : String
      {
         return this.§'!P§;
      }
      
      public function get categorySID() : String
      {
         return this.§@!P§;
      }
      
      public function §6"J§() : MovieClip
      {
         var _loc1_:Class = §[a§.§8#k§("Inventory_Item_" + this.mId);
         return new _loc1_();
      }
   }
}
