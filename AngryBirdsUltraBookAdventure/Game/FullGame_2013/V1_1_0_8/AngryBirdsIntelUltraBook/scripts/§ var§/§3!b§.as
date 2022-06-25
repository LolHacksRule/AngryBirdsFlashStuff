package § var§
{
   public class §3!b§
   {
      
      public static const §%!G§:int = 0;
      
      public static const § !>§:int = 1;
      
      public static const §1!+§:int = 2;
      
      public static const §]`§:int = 3;
      
      public static const §3y§:int = 4;
      
      public static const §]!-§:int = 5;
      
      private static var §,!Q§:§3!b§;
      
      private static var §71§:§3!b§;
      
      private static var §"4§:§3!b§;
      
      private static var §#f§:§3!b§;
      
      private static var § !r§:§3!b§;
      
      private static var §7!&§:§3!b§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §%!G§ = 0;
            loop0:
            while(true)
            {
               § !>§ = 1;
               loop1:
               while(true)
               {
                  §1!+§ = 2;
                  loop2:
                  while(true)
                  {
                     §]`§ = 3;
                     while(true)
                     {
                        §3y§ = 4;
                        continue loop0;
                        addr74:
                        if(!(_loc1_ && §3!b§))
                        {
                           §7!&§ = new §3!b§(0,0,5,10,7,275,§3y§);
                           addr81:
                           if(!_loc1_)
                           {
                              continue loop2;
                           }
                           loop11:
                           while(true)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 if(!_loc1_)
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    §§goto(addr74);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop1;
                                       }
                                       addr161:
                                       while(true)
                                       {
                                          §71§ = new §3!b§(0,0,10,500,7.5,600,§ !>§);
                                       }
                                    }
                                    continue loop1;
                                    addr124:
                                 }
                              }
                              else
                              {
                                 addr104:
                                 while(_loc2_ || _loc1_)
                                 {
                                    § !r§ = new §3!b§(0,0,10,1500,5,150,§1!+§);
                                    continue loop11;
                                 }
                                 addr104:
                              }
                              while(_loc2_)
                              {
                                 §"4§ = new §3!b§(0,0,15,1750,5,300,§]`§);
                                 §§goto(addr124);
                                 §§goto(addr104);
                              }
                              addr176:
                              while(true)
                              {
                                 §,!Q§ = new §3!b§(0,0,10,500,7.5,600,§%!G§);
                                 §§goto(addr161);
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §]!-§ = 5;
            §§goto(addr176);
         }
      }
      
      public var x:Number;
      
      public var y:Number;
      
      private var §9!9§:Number;
      
      private var §4!0§:Number;
      
      private var §<!t§:Number;
      
      private var §-!J§:Number;
      
      private var §;!L§:int;
      
      private var §?,§:Vector.<§!u§>;
      
      public function §3!b§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:Vector.<§!u§> = null)
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!(_loc9_ && param1))
         {
            super();
            loop0:
            while(true)
            {
               this.x = param1;
               loop1:
               while(true)
               {
                  this.y = param2;
                  addr114:
                  while(true)
                  {
                     this.§9!9§ = param3;
                     while(true)
                     {
                        this.§4!0§ = param4;
                        addr104:
                        while(true)
                        {
                           this.§<!t§ = param5;
                           continue loop0;
                        }
                        addr37:
                        if(!(_loc9_ && param3))
                        {
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:Vector.<§!u§> = null) : §3!b§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:§3!b§ = null;
         §§push(param1);
         if(!(_loc8_ && param1))
         {
            var _loc6_:* = §§pop();
            if(_loc7_ || param1)
            {
               §§push(§ !>§);
               if(!_loc8_)
               {
                  §§push(_loc6_);
                  if(!(_loc8_ && param1))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc8_ && param2))
                        {
                           §§push(0);
                           if(_loc8_ && param3)
                           {
                              addr108:
                              §§push(_loc6_);
                              if(!_loc8_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc7_ || param1)
                                    {
                                       §§push(1);
                                       if(!_loc8_)
                                       {
                                          addr203:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                _loc5_ = §71§;
                                                break;
                                             case 1:
                                                _loc5_ = § !r§;
                                                break;
                                             case 2:
                                                _loc5_ = §"4§;
                                                break;
                                             case 3:
                                                _loc5_ = §#f§;
                                                break;
                                             case 4:
                                                _loc5_ = §7!&§;
                                                break;
                                             default:
                                                _loc5_ = §,!Q§;
                                          }
                                          return new §3!b§(param2,param3,_loc5_.§61§,_loc5_.push,_loc5_.§0!0§,_loc5_.damage,param1,param4);
                                          addr202:
                                       }
                                       else
                                       {
                                          addr131:
                                          §§push(_loc6_);
                                          if(_loc7_ || param2)
                                          {
                                             addr139:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc8_ && §3!b§))
                                                {
                                                   addr147:
                                                   §§push(2);
                                                   if(_loc8_)
                                                   {
                                                   }
                                                }
                                                §§goto(addr202);
                                             }
                                             else
                                             {
                                                §§push(§]!-§);
                                                if(_loc7_)
                                                {
                                                   §§push(_loc6_);
                                                   if(!_loc8_)
                                                   {
                                                      addr157:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            addr160:
                                                            §§push(3);
                                                            if(!(_loc7_ || param1))
                                                            {
                                                               addr197:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr179:
                                                            §§push(4);
                                                            if(!(_loc8_ && param2))
                                                            {
                                                               §§goto(addr197);
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(§3y§);
                                                         if(!(_loc8_ && §3!b§))
                                                         {
                                                            addr177:
                                                            §§push(_loc6_);
                                                         }
                                                      }
                                                      §§goto(addr202);
                                                   }
                                                   if(§§pop() === §§pop())
                                                   {
                                                      §§goto(addr179);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr202);
                                                      §§push(5);
                                                   }
                                                   §§goto(addr202);
                                                }
                                                §§goto(addr177);
                                             }
                                          }
                                          §§goto(addr157);
                                       }
                                       §§goto(addr202);
                                    }
                                    §§goto(addr160);
                                 }
                                 else
                                 {
                                    §§push(§]`§);
                                    if(!(_loc8_ && param1))
                                    {
                                       §§goto(addr131);
                                    }
                                    §§goto(addr202);
                                 }
                              }
                              §§goto(addr139);
                           }
                           §§goto(addr202);
                        }
                        §§goto(addr147);
                     }
                     else
                     {
                        §§push(§1!+§);
                        if(_loc7_)
                        {
                           §§goto(addr108);
                        }
                     }
                     §§goto(addr197);
                  }
                  §§goto(addr157);
               }
               §§goto(addr108);
            }
            §§goto(addr147);
         }
         §§goto(addr203);
      }
      
      public function get §61§() : Number
      {
         return this.§9!9§;
      }
      
      public function get push() : Number
      {
         return this.§4!0§;
      }
      
      public function get §0!0§() : Number
      {
         return this.§<!t§;
      }
      
      public function get damage() : Number
      {
         return this.§-!J§;
      }
      
      public function get type() : int
      {
         return this.§;!L§;
      }
      
      public function get §']§() : Vector.<§!u§>
      {
         return this.§?,§;
      }
   }
}
