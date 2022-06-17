package § #s§
{
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   
   public class Item
   {
       
      
      public var mId:String = "";
      
      public var sId:String;
      
      public var §-!O§:String = "";
      
      public var §1! §:String = "";
      
      public var §;$7§:String = "";
      
      public var §+"8§:String = "";
      
      public function Item()
      {
         super();
      }
      
      public function get category() : String
      {
         return this.§1! §;
      }
      
      public function get categorySID() : String
      {
         return this.§+"8§;
      }
      
      public function §&!V§() : MovieClip
      {
         var _loc1_:Class = §2"O§.§`>§("Inventory_Item_" + this.mId);
         return new _loc1_();
      }
   }
}
