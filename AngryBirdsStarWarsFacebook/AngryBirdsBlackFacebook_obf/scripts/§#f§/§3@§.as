package §#f§
{
   import flash.text.TextField;
   
   public class §3@§
   {
       
      
      public function §3@§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function §2#V§(param1:TextField) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = param1.text;
         var _loc3_:int = _loc2_.lastIndexOf(" ",param1.caretIndex) + 1;
         var _loc4_:*;
         §§push(_loc4_ = int(_loc2_.indexOf(" ",_loc3_)));
         if(_loc6_ || param1)
         {
            if(§§pop() < 0)
            {
               if(!_loc5_)
               {
                  §§push(int(param1.text.length));
                  if(_loc6_)
                  {
                     _loc4_ = §§pop();
                  }
                  §§goto(addr76);
               }
            }
            §§push(_loc4_);
         }
         addr76:
         return §§pop();
      }
      
      public static function §,s§(param1:TextField) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = param1.text;
         var _loc3_:int = _loc2_.lastIndexOf(" ",param1.caretIndex) + 1;
         var _loc4_:int;
         §§push(_loc4_ = _loc2_.indexOf(" ",_loc3_));
         if(!_loc5_)
         {
            if(§§pop() == -1)
            {
               if(_loc6_ || param1)
               {
                  §§goto(addr61);
               }
            }
            §§goto(addr79);
         }
         addr61:
         _loc4_ = _loc2_.length;
         if(_loc6_ || _loc3_)
         {
            addr79:
            param1.setSelection(_loc3_,_loc4_);
         }
      }
      
      public static function §+"O§(param1:TextField) : String
      {
         return §>!<§(param1,param1.caretIndex);
      }
      
      public static function §>!<§(param1:TextField, param2:int) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            if(param1.text.charAt(param1.caretIndex) == " ")
            {
               if(!_loc8_)
               {
                  §§push(param2);
                  if(!(_loc8_ && _loc3_))
                  {
                     §§push(§§pop() - 1);
                  }
                  param2 = §§pop();
               }
            }
         }
         var _loc3_:String = param1.text;
         var _loc4_:int;
         §§push(_loc4_ = _loc3_.lastIndexOf(" ",param2));
         if(!_loc8_)
         {
            §§push(int(§§pop() + 1));
         }
         var _loc5_:* = §§pop();
         var _loc6_:int;
         §§push(_loc6_ = _loc3_.indexOf(" ",_loc5_));
         if(!_loc8_)
         {
            if(§§pop() == -1)
            {
               if(_loc7_)
               {
                  §§push(_loc3_);
                  if(_loc7_ || _loc3_)
                  {
                     addr97:
                     _loc6_ = §§pop().length;
                     addr98:
                     §§push(_loc3_);
                  }
                  return §§pop().slice(_loc5_,_loc6_);
               }
            }
            §§goto(addr98);
         }
         §§goto(addr97);
      }
      
      public static function §3b§(param1:TextField) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§+"O§(param1));
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:String = param1.text;
         return _loc3_.lastIndexOf(_loc2_,param1.caretIndex);
      }
      
      public static function §`H§(param1:TextField) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§+"O§(param1));
         if(_loc4_ || param1)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:String = param1.text;
         return _loc3_.indexOf(_loc2_,param1.caretIndex) + _loc2_.length;
      }
      
      public static function §>R§(param1:TextField) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§3b§(param1));
         if(!(_loc4_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         return param1.caretIndex - _loc2_;
      }
      
      public static function §6""§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         while(true)
         {
            §§push(param1);
            if(_loc3_ && _loc2_)
            {
               break;
            }
            if(§§pop().charAt(param1.length - 1) != " ")
            {
               addr66:
               §§push(param1);
               break;
            }
            §§push(param1);
            if(_loc3_)
            {
               break;
            }
            §§push(§§pop().substr(0,param1.length - 1));
            if(!_loc3_)
            {
               param1 = §§pop();
               if(!_loc3_)
               {
                  continue;
               }
               §§goto(addr66);
            }
            break;
         }
         return §§pop();
      }
      
      public static function §4f§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Array = param1.split(" ");
         if(!_loc3_)
         {
            if(_loc2_.length > 1)
            {
               if(_loc4_)
               {
                  §§goto(addr50);
               }
            }
            return "";
         }
         addr50:
         return _loc2_[1];
      }
      
      public static function §@!+§(param1:String) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(param1);
            if(_loc4_ || _loc3_)
            {
               §§push(§§pop().replace(/^\s\s*/,""));
            }
            param1 = §§pop();
         }
         var _loc2_:RegExp = /\s/;
         var _loc3_:int = param1.length;
         while(_loc2_.test(param1.charAt(--_loc3_)))
         {
         }
         return param1.slice(0,_loc3_ + 1);
      }
   }
}
