package §]"r§
{
   import com.furusystems.dconsole2.core.style.§6!x§;
   import com.furusystems.dconsole2.core.style.§>"!§;
   import flash.text.TextField;
   
   public class §@D§
   {
       
      
      public function §@D§()
      {
         super();
      }
      
      public static function §3!x§(param1:String) : TextField
      {
         var _loc2_:TextField = new TextField();
         _loc2_.defaultTextFormat = §6!x§.§'#N§;
         _loc2_.text = param1;
         _loc2_.height = §>"!§.§6R§;
         var _loc3_:String = _loc2_.defaultTextFormat.font;
         if(_loc3_.charAt(0) != "_")
         {
            _loc2_.embedFonts = true;
         }
         _loc2_.mouseEnabled = true;
         _loc2_.selectable = false;
         return _loc2_;
      }
   }
}
