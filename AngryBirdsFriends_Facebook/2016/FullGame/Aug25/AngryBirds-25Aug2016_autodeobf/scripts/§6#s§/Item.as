package §6#s§
{
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   
   public class Item
   {
       
      
      public var mId:String = "";
      
      public var sId:String;
      
      public var §2!4§:String = "";
      
      public var §3$1§:String = "";
      
      public var §@I§:String = "";
      
      public var §;#I§:String = "";
      
      public function Item()
      {
         super();
      }
      
      public function get category() : String
      {
         return this.§3$1§;
      }
      
      public function get categorySID() : String
      {
         return this.§;#I§;
      }
      
      public function §>#G§() : MovieClip
      {
         var _loc1_:Class = §@`§.§4!i§("Inventory_Item_" + this.mId);
         return new _loc1_();
      }
   }
}
