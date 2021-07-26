package §%y§
{
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   
   public class Item
   {
       
      
      public var mId:String = "";
      
      public var sId:String;
      
      public var §!I§:String = "";
      
      public var §>"r§:String = "";
      
      public var §%$A§:String = "";
      
      public var §=!J§:String = "";
      
      public function Item()
      {
         super();
      }
      
      public function get category() : String
      {
         return this.§>"r§;
      }
      
      public function get categorySID() : String
      {
         return this.§=!J§;
      }
      
      public function §7O§() : MovieClip
      {
         var _loc1_:Class = §6$A§.§1!m§("Inventory_Item_" + this.mId);
         return new _loc1_();
      }
   }
}
