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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function get category() : String
      {
         return this.§[C§;
      }
      
      public function §@!j§() : MovieClip
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§8B§);
         §§push("Inventory_Item_");
         if(!(_loc3_ && _loc2_))
         {
            §§push(§§pop() + this.§;!Y§);
         }
         var _loc1_:Class = §§pop().§6"C§(§§pop());
         return new _loc1_();
      }
   }
}
