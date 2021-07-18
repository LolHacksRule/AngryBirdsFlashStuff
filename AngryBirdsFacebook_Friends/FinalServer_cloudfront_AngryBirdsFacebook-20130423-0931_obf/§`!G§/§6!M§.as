package §`!G§
{
   public class §6!M§
   {
      
      public static const §2a§:int = 0;
      
      public static const §#!M§:int = 1;
      
      public static const §+"7§:int = 2;
      
      public static const §8"L§:int = 3;
      
      public static const §&!U§:int = 4;
      
      public static const §var§:int = 5;
      
      private static var §8L§:§6!M§;
      
      private static var §^!p§:§6!M§;
      
      private static var §,!x§:§6!M§;
      
      private static var §[!F§:§6!M§;
      
      private static var §0b§:§6!M§;
      
      private static var §3G§:§6!M§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §2a§ = 0;
            loop0:
            while(true)
            {
               §#!M§ = 1;
               while(true)
               {
                  §+"7§ = 2;
                  loop2:
                  for(; _loc1_ || §6!M§; loop4:
                  while(!(_loc2_ && §6!M§))
                  {
                     while(true)
                     {
                        §var§ = 5;
                        loop6:
                        while(true)
                        {
                           §8L§ = new §6!M§(0,0,10,500,7.5,600,§2a§);
                           loop7:
                           while(true)
                           {
                              §^!p§ = new §6!M§(0,0,10,500,7.5,600,§#!M§);
                              loop8:
                              while(!_loc2_)
                              {
                                 §,!x§ = new §6!M§(0,0,15,1750,5,300,§8"L§);
                                 loop9:
                                 while(!_loc2_)
                                 {
                                    §[!F§ = new §6!M§(0,0,8,1500,0,0,§var§);
                                    while(!_loc2_)
                                    {
                                       if(_loc1_)
                                       {
                                          §0b§ = new §6!M§(0,0,10,1500,5,150,§+"7§);
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                if(!_loc1_)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             continue loop9;
                                          }
                                          continue loop6;
                                       }
                                       §§goto(addr168);
                                       if(!(_loc2_ && §6!M§))
                                       {
                                          return;
                                       }
                                    }
                                    continue loop8;
                                 }
                                 continue loop7;
                              }
                              continue loop4;
                           }
                        }
                     }
                  })
                  {
                     if(!_loc1_)
                     {
                        continue loop0;
                     }
                     §8"L§ = 3;
                     while(true)
                     {
                        §&!U§ = 4;
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr163);
      }
      
      public var x:Number;
      
      public var y:Number;
      
      private var §!!r§:Number;
      
      private var §'U§:Number;
      
      private var § '§:Number;
      
      private var §>!$§:Number;
      
      private var §'!'§:int;
      
      private var §,W§:Vector.<§[!8§>;
      
      public function §6!M§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:Vector.<§[!8§> = null)
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!(_loc9_ && param1))
         {
            super();
            while(true)
            {
               this.x = param1;
               loop1:
               while(_loc10_ || this)
               {
                  this.y = param2;
                  while(true)
                  {
                     this.§!!r§ = param3;
                     while(_loc10_)
                     {
                        if(_loc9_)
                        {
                           continue loop1;
                        }
                        this.§'U§ = param4;
                        while(true)
                        {
                           this.§ '§ = param5;
                           addr88:
                           loop5:
                           while(true)
                           {
                              this.§>!$§ = param6;
                              addr83:
                              while(true)
                              {
                                 this.§'!'§ = param7;
                                 continue loop5;
                              }
                           }
                           addr49:
                           return;
                           if(_loc9_ && param2)
                           {
                              continue;
                           }
                           §§goto(addr49);
                        }
                        if(!(_loc10_ || param3))
                        {
                           continue;
                        }
                        §§goto(addr78);
                     }
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:Vector.<§[!8§> = null) : §6!M§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:§6!M§ = null;
         §§push(param1);
         if(_loc7_ || param2)
         {
            var _loc6_:* = §§pop();
            if(!(_loc8_ && param1))
            {
               §§push(§#!M§);
               if(!_loc8_)
               {
                  §§push(_loc6_);
                  if(_loc7_ || param2)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc8_)
                        {
                           §§push(0);
                           if(!_loc8_)
                           {
                              addr208:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc5_ = §^!p§;
                                    break;
                                 case 1:
                                    _loc5_ = §0b§;
                                    break;
                                 case 2:
                                    _loc5_ = §,!x§;
                                    break;
                                 case 3:
                                    _loc5_ = §[!F§;
                                    break;
                                 case 4:
                                    _loc5_ = §3G§;
                                    break;
                                 default:
                                    _loc5_ = §8L§;
                              }
                              return new §6!M§(param2,param3,_loc5_.§0p§,_loc5_.push,_loc5_.§7!m§,_loc5_.damage,param1,param4);
                              addr207:
                           }
                           else
                           {
                              addr154:
                              §§push(_loc6_);
                              if(!(_loc8_ && §6!M§))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc8_ && param3))
                                    {
                                       addr170:
                                       §§push(3);
                                       if(!_loc7_)
                                       {
                                          addr182:
                                          if(§§pop() === _loc6_)
                                          {
                                             addr184:
                                             §§push(4);
                                             if(_loc7_ || param1)
                                             {
                                             }
                                             §§goto(addr207);
                                          }
                                          else
                                          {
                                             §§goto(addr207);
                                             §§push(5);
                                          }
                                       }
                                       §§goto(addr207);
                                    }
                                    §§goto(addr184);
                                 }
                                 else
                                 {
                                    §§push(§&!U§);
                                    if(_loc7_ || param3)
                                    {
                                       §§goto(addr182);
                                    }
                                    §§goto(addr207);
                                 }
                              }
                              §§goto(addr182);
                           }
                        }
                        else
                        {
                           addr119:
                           §§push(1);
                           if(_loc8_ && param1)
                           {
                           }
                        }
                        §§goto(addr207);
                     }
                     else
                     {
                        §§push(§+"7§);
                        if(!(_loc8_ && param3))
                        {
                           §§push(_loc6_);
                           if(!(_loc8_ && param3))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc8_ && param3))
                                 {
                                    §§goto(addr119);
                                 }
                                 §§goto(addr184);
                              }
                              else
                              {
                                 §§push(§8"L§);
                                 if(!_loc8_)
                                 {
                                    addr131:
                                    §§push(_loc6_);
                                    if(!(_loc8_ && param2))
                                    {
                                       addr139:
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc7_)
                                          {
                                             §§push(2);
                                             if(!(_loc8_ && param3))
                                             {
                                                §§goto(addr207);
                                             }
                                             else
                                             {
                                                §§goto(addr154);
                                             }
                                          }
                                          §§goto(addr170);
                                       }
                                       else
                                       {
                                          §§push(§var§);
                                          if(!_loc8_)
                                          {
                                             §§goto(addr154);
                                          }
                                       }
                                    }
                                    §§goto(addr182);
                                 }
                              }
                              §§goto(addr154);
                           }
                           §§goto(addr139);
                        }
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr182);
               }
               §§goto(addr207);
            }
            §§goto(addr184);
         }
         §§goto(addr208);
      }
      
      public function get §0p§() : Number
      {
         return this.§!!r§;
      }
      
      public function get push() : Number
      {
         return this.§'U§;
      }
      
      public function get §7!m§() : Number
      {
         return this.§ '§;
      }
      
      public function get damage() : Number
      {
         return this.§>!$§;
      }
      
      public function get type() : int
      {
         return this.§'!'§;
      }
      
      public function get §'b§() : Vector.<§[!8§>
      {
         return this.§,W§;
      }
   }
}
