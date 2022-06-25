package §%Q§
{
   public class §=N§
   {
      
      public static const §[!6§:int = 0;
      
      public static const §;!P§:int = 1;
      
      public static const §;!I§:int = 2;
      
      public static const § w§:int = 3;
      
      public static const §+!6§:int = 4;
      
      private static var §'4§:§=N§;
      
      private static var §!?§:§=N§;
      
      private static var §6D§:§=N§;
      
      private static var §0!9§:§=N§;
      
      private static var §<!w§:§=N§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §[!6§ = 0;
            loop0:
            while(true)
            {
               §;!P§ = 1;
               while(true)
               {
                  §;!I§ = 2;
                  loop4:
                  while(_loc2_ || §=N§)
                  {
                     §'4§ = new §=N§(0,0,10,500,7.5,600,§[!6§);
                     loop5:
                     while(!_loc1_)
                     {
                        §!?§ = new §=N§(0,0,10,500,7.5,600,§;!P§);
                        loop6:
                        while(!_loc1_)
                        {
                           §6D§ = new §=N§(0,0,15,1750,5,300,§ w§);
                           do
                           {
                              §0!9§ = new §=N§(0,0,10,1500,5,150,§;!I§);
                              while(true)
                              {
                                 if(_loc1_ && _loc2_)
                                 {
                                    continue loop6;
                                 }
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 if(!_loc1_)
                                 {
                                    continue;
                                 }
                                 addr166:
                                 while(true)
                                 {
                                    § w§ = 3;
                                    break loop5;
                                 }
                              }
                              continue loop4;
                           }
                           while(!(_loc2_ || §=N§));
                           
                           if(!(_loc1_ && _loc1_))
                           {
                              return;
                           }
                           continue loop5;
                        }
                        continue loop0;
                     }
                     while(true)
                     {
                        §+!6§ = 4;
                        continue loop4;
                        §§goto(addr132);
                     }
                     addr132:
                  }
               }
            }
         }
         §§goto(addr166);
      }
      
      public var x:Number;
      
      public var y:Number;
      
      private var §0!a§:Number;
      
      private var §#!i§:Number;
      
      private var §>!p§:Number;
      
      private var §2!O§:Number;
      
      private var §,s§:int;
      
      public function §=N§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            super();
            while(true)
            {
               this.x = param1;
               addr106:
               while(true)
               {
                  this.y = param2;
                  addr101:
                  while(true)
                  {
                     this.§0!a§ = param3;
                     addr31:
                     if(!(_loc9_ && param2))
                     {
                        return;
                        addr38:
                     }
                  }
               }
            }
            addr109:
         }
         loop3:
         while(true)
         {
            this.§#!i§ = param4;
            while(true)
            {
               if(!_loc9_)
               {
                  this.§>!p§ = param5;
                  continue;
               }
               §§goto(addr109);
            }
            §§goto(addr106);
            while(true)
            {
               if(_loc9_ && param3)
               {
                  continue loop3;
               }
               if(_loc8_)
               {
                  continue;
               }
               §§goto(addr106);
            }
            §§goto(addr101);
         }
         §§goto(addr38);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §=N§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:§=N§ = null;
         §§push(param1);
         if(!(_loc6_ && param3))
         {
            var _loc5_:* = §§pop();
            if(_loc7_)
            {
               §§push(§;!P§);
               if(!(_loc6_ && param2))
               {
                  §§push(_loc5_);
                  if(_loc7_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc7_)
                        {
                           §§push(0);
                           if(!(_loc7_ || param1))
                           {
                              addr122:
                              §§push(_loc5_);
                              if(!_loc6_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc7_ || param1)
                                    {
                                       addr133:
                                       §§push(2);
                                       if(_loc7_)
                                       {
                                          addr161:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                _loc4_ = §!?§;
                                                break;
                                             case 1:
                                                _loc4_ = §0!9§;
                                                break;
                                             case 2:
                                                _loc4_ = §6D§;
                                                break;
                                             case 3:
                                                _loc4_ = §<!w§;
                                                break;
                                             default:
                                                _loc4_ = §'4§;
                                          }
                                          return new §=N§(param2,param3,_loc4_.§@!§,_loc4_.push,_loc4_.§8!K§,_loc4_.damage,param1);
                                          addr160:
                                          addr136:
                                       }
                                    }
                                    else
                                    {
                                       addr152:
                                       §§push(3);
                                       if(_loc6_)
                                       {
                                       }
                                    }
                                    §§goto(addr160);
                                 }
                                 else
                                 {
                                    §§push(§+!6§);
                                    if(!_loc6_)
                                    {
                                       addr151:
                                       if(§§pop() === _loc5_)
                                       {
                                          §§goto(addr152);
                                       }
                                       else
                                       {
                                          §§goto(addr160);
                                          §§push(4);
                                       }
                                       §§goto(addr160);
                                    }
                                 }
                              }
                              §§goto(addr151);
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr133);
                     }
                     else
                     {
                        §§push(§;!I§);
                        if(!_loc6_)
                        {
                           §§push(_loc5_);
                           if(_loc7_ || param1)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    §§push(1);
                                    if(!(_loc7_ || param3))
                                    {
                                       §§goto(addr136);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr152);
                                 }
                                 §§goto(addr160);
                              }
                              else
                              {
                                 §§push(§ w§);
                                 if(_loc7_ || param2)
                                 {
                                    §§goto(addr122);
                                 }
                              }
                              §§goto(addr160);
                           }
                        }
                        §§goto(addr122);
                     }
                  }
                  §§goto(addr151);
               }
               §§goto(addr122);
            }
            §§goto(addr152);
         }
         §§goto(addr161);
      }
      
      public function get §@!§() : Number
      {
         return this.§0!a§;
      }
      
      public function get push() : Number
      {
         return this.§#!i§;
      }
      
      public function get §8!K§() : Number
      {
         return this.§>!p§;
      }
      
      public function get damage() : Number
      {
         return this.§2!O§;
      }
      
      public function get type() : int
      {
         return this.§,s§;
      }
   }
}
