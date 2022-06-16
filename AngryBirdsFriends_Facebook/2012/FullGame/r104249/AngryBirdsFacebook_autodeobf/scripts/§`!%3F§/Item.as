package §`!?§
{
   import com.rovio.assets.§>"5§;
   import flash.display.MovieClip;
   
   public class Item
   {
       
      
      public var §3!9§:String = "";
      
      public var sId:String;
      
      public var mName:String = "";
      
      public var §;!g§:String = "";
      
      public var §-"H§:String = "";
      
      public function Item()
      {
         super();
      }
      
      public function get category() : String
      {
         return this.§;!g§;
      }
      
      public function §`"8§() : MovieClip
      {
         var _loc1_:Class = §>"5§.§6s§("Inventory_Item_" + this.§3!9§);
         return new _loc1_();
      }
   }
}
