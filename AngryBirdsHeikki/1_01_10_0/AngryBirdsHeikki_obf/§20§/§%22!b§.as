package §20§
{
   import §'!O§.§#!_§;
   import §'!O§.StatePlay;
   import §-!"§.§=p§;
   import §<u§.§]!Q§;
   import flash.display.Stage;
   
   public class §"!b§
   {
      
      protected static var §#q§:StatePopupManager;
      
      protected static var §<!L§:§]!Q§;
      
      protected static var §%!?§:§]!Q§;
      
      private static var §5'§:Array;
      
      private static var §3!7§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §"!b§))
         {
            §5'§ = [];
         }
         do
         {
            §3!7§ = [];
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public function §"!b§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function initialize(param1:Stage) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(!§#q§)
            {
               loop0:
               while(true)
               {
                  §#q§ = new StatePopupManager();
                  if(!_loc2_)
                  {
                     break;
                  }
                  addr62:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(!_loc2_)
               {
                  return;
               }
            }
            return;
         }
         §§goto(addr62);
      }
      
      private static function §2V§(param1:§]!Q§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §<!L§ = param1;
            do
            {
               §3!7§.push(§<!L§.§1!B§);
               do
               {
                  §<!L§.changeState(§#q§);
               }
               while(!(_loc3_ || param1));
               
            }
            while(!_loc3_);
            
         }
      }
      
      public static function §,]§(param1:§]!Q§, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:StatePlay = param1.§1!B§ as StatePlay;
         if(_loc6_ || §"!b§)
         {
            §2V§(param1);
         }
         var _loc4_:§]!Z§ = new §]!Z§(§<!L§,§#q§,_loc3_);
         if(_loc6_ || param2)
         {
            §]!,§(_loc4_,param2);
         }
      }
      
      public static function §66§(param1:§]!Q§, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§=p§ = param1.§1!B§;
         if(_loc5_ || param2)
         {
            §2V§(param1);
         }
         var _loc4_:§7Q§ = new §7Q§(§<!L§,§#q§,_loc3_);
         if(_loc5_)
         {
            §]!,§(_loc4_,param2);
         }
      }
      
      public static function §1+§(param1:§]!Q§, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§#!_§ = param1.§1!B§ as §#!_§;
         if(_loc6_)
         {
            §2V§(param1);
         }
         var _loc4_:§4!E§ = new §4!E§(§<!L§,§#q§,_loc3_);
         if(!(_loc5_ && §"!b§))
         {
            §]!,§(_loc4_,param2,true);
         }
      }
      
      public static function §,!Z§(param1:§]!Q§, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §2V§(param1);
         }
         var _loc3_:§9!C§ = new §9!C§(§<!L§,§#q§);
         if(!(_loc4_ && param2))
         {
            §]!,§(_loc3_,param2,true);
         }
      }
      
      private static function §]!,§(param1:Popup, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            param1.open(param2);
            loop0:
            while(true)
            {
               param1.mClip.addEventListener(§`w§.§?!?§,§&K§);
               while(true)
               {
                  param1.visible = true;
                  loop2:
                  while(!_loc5_)
                  {
                     if(!_loc4_)
                     {
                        continue loop0;
                     }
                     if(!param3)
                     {
                        param1.x = §,L§.§1'§ / 2;
                        loop3:
                        while(true)
                        {
                           if(!(_loc5_ && §"!b§))
                           {
                              while(true)
                              {
                              }
                              addr75:
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(param1);
                                 §§push(§,L§.§1'§ + §,L§.§,!<§);
                                 if(!(_loc5_ && §"!b§))
                                 {
                                    §§push(§§pop() / 2);
                                 }
                                 §§pop().x = §§pop();
                                 addr95:
                                 while(true)
                                 {
                                    continue loop3;
                                 }
                                 continue loop3;
                              }
                              addr79:
                           }
                           while(true)
                           {
                              param1.y = §,L§.§!!d§ / 2;
                              while(_loc4_)
                              {
                                 §5'§.push(param1);
                                 if(!_loc5_)
                                 {
                                    continue loop3;
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                     §§goto(addr79);
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      private static function §&K§(param1:§`w§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            if(§3!7§.length > 0)
            {
               if(_loc4_)
               {
                  addr29:
                  §<!L§.changeState(§3!7§.pop());
               }
            }
            var _loc2_:Popup = param1.§'$§;
            if(_loc4_)
            {
               _loc2_.mClip.removeEventListener(§`w§.§?!?§,§&K§);
            }
            var _loc3_:int = 0;
            loop0:
            while(true)
            {
               if(_loc3_ >= §5'§.length)
               {
                  if(_loc4_ || _loc2_)
                  {
                     if(!_loc5_)
                     {
                        break;
                     }
                     addr118:
                     §5'§.splice(_loc3_,1);
                     addr116:
                     loop2:
                     while(true)
                     {
                        addr75:
                        while(true)
                        {
                           _loc3_++;
                           continue loop2;
                        }
                        continue loop0;
                     }
                     addr120:
                  }
                  while(true)
                  {
                     if(_loc4_ || param1)
                     {
                        continue loop0;
                     }
                     §§goto(addr120);
                  }
               }
               else
               {
                  §§push(§5'§);
                  if(_loc4_ || param1)
                  {
                     §§push(_loc3_);
                     if(_loc4_ || _loc2_)
                     {
                        if(§§pop()[§§pop()] == _loc2_)
                        {
                           §§goto(addr116);
                        }
                        §§goto(addr75);
                     }
                     §§goto(addr118);
                  }
               }
               §§goto(addr118);
            }
            return;
         }
         §§goto(addr29);
      }
      
      public static function §5;§() : Boolean
      {
         return §5'§.length > 0;
      }
      
      public static function get §2F§() : Array
      {
         return §5'§;
      }
   }
}
