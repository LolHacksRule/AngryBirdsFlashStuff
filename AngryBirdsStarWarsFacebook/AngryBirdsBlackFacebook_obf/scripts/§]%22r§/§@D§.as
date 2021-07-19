package §]"r§
{
   import com.furusystems.dconsole2.core.style.§6!x§;
   import com.furusystems.dconsole2.core.style.§>"!§;
   import flash.text.TextField;
   
   public class §@D§
   {
       
      
      public function §@D§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §3!x§(param1:String) : TextField
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:TextField = new TextField();
         if(!_loc5_)
         {
            _loc2_.defaultTextFormat = §6!x§.§'#N§;
            loop0:
            while(true)
            {
               addr37:
               while(true)
               {
                  _loc2_.text = param1;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            _loc2_.height = §>"!§.§6R§;
            if(!(_loc5_ && param1))
            {
               if(true)
               {
                  break;
               }
               §§goto(addr37);
            }
            §§goto(addr41);
         }
         var _loc3_:String = _loc2_.defaultTextFormat.font;
         if(_loc4_ || _loc2_)
         {
            if(_loc3_.charAt(0) != "_")
            {
               while(true)
               {
                  _loc2_.embedFonts = true;
                  while(true)
                  {
                  }
               }
               addr123:
            }
            do
            {
               _loc2_.mouseEnabled = true;
               do
               {
                  _loc2_.selectable = false;
               }
               while(_loc5_ && _loc3_);
               
               if(!(_loc4_ || §@D§))
               {
                  continue;
               }
            }
            while(_loc5_);
            
            return _loc2_;
         }
         §§goto(addr123);
      }
   }
}
