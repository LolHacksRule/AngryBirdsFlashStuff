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
         if(_loc2_ || §3!b§)
         {
            §%!G§ = 0;
            loop0:
            while(true)
            {
               § !>§ = 1;
               while(true)
               {
                  §1!+§ = 2;
                  loop2:
                  for(; !_loc1_; if(!(_loc2_ || §3!b§))
                  {
                     continue;
                  },if(_loc1_)
                  {
                     continue loop0;
                  },§71§ = new §3!b§(0,0,10,500,7.5,600,§ !>§),§§goto(addr130))
                  {
                     §]`§ = 3;
                     while(true)
                     {
                        §3y§ = 4;
                        while(_loc2_)
                        {
                           §]!-§ = 5;
                           while(true)
                           {
                              §,!Q§ = new §3!b§(0,0,10,500,7.5,600,§%!G§);
                              addr143:
                              while(_loc2_)
                              {
                                 continue loop2;
                              }
                           }
                           loop8:
                           while(!(_loc1_ && §3!b§))
                           {
                              while(true)
                              {
                                 §#f§ = new §3!b§(0,0,8,1500,0,0,§]!-§);
                                 loop10:
                                 for(; _loc2_ || _loc2_; while(_loc2_ || _loc1_)
                                 {
                                    §7!&§ = new §3!b§(0,0,5,10,7,275,§3y§);
                                    if(!_loc2_)
                                    {
                                       continue;
                                    }
                                    if(_loc2_)
                                    {
                                       §§goto(addr45);
                                    }
                                    else
                                    {
                                       §§goto(addr143);
                                    }
                                 })
                                 {
                                    if(!_loc1_)
                                    {
                                       § !r§ = new §3!b§(0,0,10,1500,5,150,§1!+§);
                                       continue;
                                    }
                                    addr130:
                                    while(true)
                                    {
                                       §"4§ = new §3!b§(0,0,15,1750,5,300,§]`§);
                                       break loop10;
                                    }
                                 }
                                 continue loop8;
                              }
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr117);
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
         if(_loc10_)
         {
            super();
            while(true)
            {
               this.x = param1;
               while(true)
               {
                  this.y = param2;
                  while(!_loc9_)
                  {
                     this.§9!9§ = param3;
                     while(_loc10_)
                     {
                        this.§4!0§ = param4;
                     }
                  }
               }
            }
            addr107:
         }
         loop4:
         while(true)
         {
            this.§<!t§ = param5;
            loop5:
            while(!_loc9_)
            {
               this.§-!J§ = param6;
               loop6:
               while(true)
               {
                  this.§;!L§ = param7;
                  while(true)
                  {
                     if(_loc10_)
                     {
                        if(!_loc9_)
                        {
                           if(_loc9_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop5;
                     }
                     continue loop6;
                  }
                  continue loop4;
               }
            }
            §§goto(addr90);
         }
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:Vector.<§!u§> = null) : §3!b§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:§3!b§ = null;
         §§push(param1);
         if(!(_loc7_ && param1))
         {
            var _loc6_:* = §§pop();
            if(!(_loc7_ && §3!b§))
            {
               §§push(§ !>§);
               if(!(_loc7_ && param3))
               {
                  §§push(_loc6_);
                  if(!_loc7_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc7_)
                        {
                           §§push(0);
                           if(_loc8_ || param2)
                           {
                              addr100:
                           }
                           else
                           {
                              addr188:
                           }
                        }
                        else
                        {
                           addr170:
                           §§push(4);
                           if(_loc8_ || §3!b§)
                           {
                              §§goto(addr188);
                           }
                        }
                        addr194:
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
                        addr193:
                     }
                     else
                     {
                        §§push(§1!+§);
                        if(!(_loc7_ && param2))
                        {
                           §§push(_loc6_);
                           if(!_loc7_)
                           {
                              addr112:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc8_)
                                 {
                                    §§push(1);
                                    if(!(_loc8_ || param1))
                                    {
                                       addr155:
                                       §§push(_loc6_);
                                       if(!_loc7_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc8_)
                                             {
                                                addr161:
                                                §§push(3);
                                                if(_loc8_)
                                                {
                                                   §§goto(addr193);
                                                }
                                                else
                                                {
                                                   addr168:
                                                   §§push(_loc6_);
                                                }
                                                §§goto(addr193);
                                             }
                                             §§goto(addr170);
                                          }
                                          else
                                          {
                                             §§push(§3y§);
                                             if(!_loc7_)
                                             {
                                                §§goto(addr168);
                                             }
                                             §§goto(addr188);
                                          }
                                       }
                                       if(§§pop() === §§pop())
                                       {
                                          §§goto(addr170);
                                       }
                                       else
                                       {
                                          §§push(5);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr148:
                                    §§push(2);
                                    if(_loc7_)
                                    {
                                       §§goto(addr188);
                                    }
                                 }
                                 §§goto(addr193);
                              }
                              else
                              {
                                 §§push(§]`§);
                                 if(!(_loc7_ && param3))
                                 {
                                    §§push(_loc6_);
                                    if(_loc8_ || param2)
                                    {
                                       addr140:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc7_ && param2))
                                          {
                                             §§goto(addr148);
                                          }
                                          else
                                          {
                                             §§goto(addr161);
                                          }
                                       }
                                       else
                                       {
                                          §§push(§]!-§);
                                          if(!_loc7_)
                                          {
                                             §§goto(addr155);
                                          }
                                       }
                                       §§goto(addr168);
                                    }
                                    §§goto(addr155);
                                 }
                              }
                              §§goto(addr188);
                           }
                           §§goto(addr140);
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr170);
                  }
                  §§goto(addr112);
               }
               §§goto(addr100);
            }
            §§goto(addr170);
         }
         §§goto(addr194);
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
