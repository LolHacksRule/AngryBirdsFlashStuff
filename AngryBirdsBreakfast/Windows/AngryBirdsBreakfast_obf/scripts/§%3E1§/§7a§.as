package §>1§
{
   public class §7a§
   {
      
      public static const §<!q§:String = "_";
      
      public static const §2!s§:String = "start";
      
      public static const §=A§:String = "end";
      
      public static const §5z§:String = "exit";
      
      public static const §>R§:String = "run";
      
      public static const §?!i§:String = "transition_in";
      
      public static const §^I§:String = "transition_out";
      
      public static const DEFAULT:String = "default";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §<!q§ = "_";
            loop0:
            while(true)
            {
               §2!s§ = "start";
               while(true)
               {
                  §=A§ = "end";
                  addr84:
                  while(!(_loc2_ && _loc1_))
                  {
                     §>R§ = "run";
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §5z§ = "exit";
            §§goto(addr84);
            §§goto(addr60);
         }
      }
      
      public function §7a§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §0-§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§2!s§);
         if(!(_loc3_ && _loc3_))
         {
            return §§pop() + §<!q§ + §>R§;
         }
      }
      
      public static function §;!W§() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§2!s§);
         if(!_loc2_)
         {
            return §§pop() + §<!q§ + §?!i§ + §<!q§ + DEFAULT;
         }
      }
      
      public static function §!7§() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§2!s§);
         if(!(_loc2_ && _loc1_))
         {
            return §§pop() + §<!q§ + §^I§ + §<!q§ + DEFAULT;
         }
      }
      
      public static function §%!H§(param1:String = "") : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§2!s§);
         if(_loc4_ || param1)
         {
            §§push(§§pop() + §<!q§ + §?!i§);
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               §§push(param1);
               if(_loc4_)
               {
                  if(§§pop() != "")
                  {
                     if(_loc4_ || param1)
                     {
                        addr76:
                        §§push(§§pop() + (§<!q§ + param1.toLowerCase()));
                        if(_loc4_)
                        {
                           addr80:
                           _loc2_ = §§pop();
                           return _loc2_;
                        }
                     }
                  }
                  §§push("");
               }
               §§goto(addr76);
            }
         }
         §§goto(addr80);
      }
      
      public static function §9h§(param1:String = "") : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§2!s§);
         if(_loc3_ || _loc3_)
         {
            §§push(§§pop() + §<!q§ + §^I§);
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               §§push(param1);
               if(!_loc4_)
               {
                  if(§§pop() != "")
                  {
                     §§goto(addr84);
                  }
                  else
                  {
                     §§push("");
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc4_ && §7a§)
                  {
                  }
                  §§goto(addr84);
               }
               §§goto(addr58);
            }
            §§goto(addr84);
         }
         addr84:
         if(!(_loc4_ && _loc2_))
         {
            addr58:
            return §<!q§ + param1.toLowerCase();
         }
      }
   }
}
