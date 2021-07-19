package §+!8§
{
   public class §2!5§
   {
      
      public static const §9!`§:int = 0;
      
      public static const §=!O§:int = 1;
      
      public static const §,!0§:int = 2;
      
      public static const §"9§:int = 3;
      
      public static const §9n§:int = 4;
      
      private static var §2!P§:§2!5§;
      
      private static var §<;§:§2!5§;
      
      private static var §>!]§:§2!5§;
      
      private static var §2q§:§2!5§;
      
      private static var §!S§:§2!5§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §2!5§)
         {
            §9!`§ = 0;
            loop0:
            while(true)
            {
               §=!O§ = 1;
               while(true)
               {
                  §,!0§ = 2;
                  while(true)
                  {
                     §"9§ = 3;
                     addr142:
                     while(_loc2_ || _loc2_)
                     {
                        continue loop0;
                     }
                  }
                  addr79:
                  if(_loc1_ && §2!5§)
                  {
                     continue;
                  }
                  §!S§ = new §2!5§(0,0,5,10,7,275,§9n§);
                  addr96:
                  if(_loc2_ || _loc2_)
                  {
                     addr48:
                     if(_loc2_ || _loc1_)
                     {
                        addr55:
                        if(!_loc2_)
                        {
                           while(!_loc1_)
                           {
                              §>!]§ = new §2!5§(0,0,15,1750,5,300,§"9§);
                              while(true)
                              {
                                 §2q§ = new §2!5§(0,0,10,1500,5,150,§,!0§);
                                 addr77:
                                 while(_loc2_)
                                 {
                                    §§goto(addr79);
                                    §§goto(addr96);
                                 }
                                 §§goto(addr142);
                                 §§goto(addr48);
                              }
                              §§goto(addr55);
                           }
                           while(true)
                           {
                              §<;§ = new §2!5§(0,0,10,500,7.5,600,§=!O§);
                              §§goto(addr122);
                           }
                           addr122:
                           addr137:
                        }
                        addr57:
                        if(_loc2_ || _loc1_)
                        {
                           return;
                        }
                        addr161:
                        while(true)
                        {
                           §9n§ = 4;
                           §§goto(addr142);
                           §§goto(addr57);
                        }
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr77);
               }
            }
         }
         §§goto(addr161);
      }
      
      public var x:Number;
      
      public var y:Number;
      
      private var §9!N§:Number;
      
      private var §1R§:Number;
      
      private var §^!Z§:Number;
      
      private var §`&§:Number;
      
      private var §>A§:int;
      
      public function §2!5§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            super();
            loop0:
            while(true)
            {
               this.x = param1;
               while(true)
               {
                  this.y = param2;
                  while(!(_loc8_ && param1))
                  {
                     this.§9!N§ = param3;
                     continue loop0;
                     addr47:
                     if(!(_loc8_ && param1))
                     {
                        this.§>A§ = param7;
                        addr64:
                        if(_loc8_ && param1)
                        {
                           while(_loc9_ || param3)
                           {
                              §§goto(addr47);
                              §§goto(addr64);
                           }
                           loop5:
                           for(; !_loc8_; §§goto(addr40))
                           {
                              if(_loc8_ && param3)
                              {
                                 continue loop0;
                              }
                              while(true)
                              {
                                 this.§`&§ = param6;
                                 continue loop5;
                              }
                           }
                           addr40:
                           while(true)
                           {
                              this.§^!Z§ = param5;
                              §§goto(addr69);
                           }
                           addr69:
                           addr83:
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §2!5§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§2!5§ = null;
         §§push(param1);
         if(_loc6_ || param1)
         {
            var _loc5_:* = §§pop();
            if(_loc6_)
            {
               §§push(§=!O§);
               if(!_loc7_)
               {
                  §§push(_loc5_);
                  if(!_loc7_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc7_)
                        {
                           §§push(0);
                           if(_loc7_)
                           {
                              addr88:
                              §§push(_loc5_);
                              if(_loc6_ || §2!5§)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       addr99:
                                       §§push(1);
                                       if(_loc6_)
                                       {
                                          addr150:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                _loc4_ = §<;§;
                                                break;
                                             case 1:
                                                _loc4_ = §2q§;
                                                break;
                                             case 2:
                                                _loc4_ = §>!]§;
                                                break;
                                             case 3:
                                                _loc4_ = §!S§;
                                                break;
                                             default:
                                                _loc4_ = §2!P§;
                                          }
                                          return new §2!5§(param2,param3,_loc4_.§%!B§,_loc4_.push,_loc4_.§]!E§,_loc4_.damage,param1);
                                          addr149:
                                          addr102:
                                       }
                                       else
                                       {
                                          addr130:
                                          §§goto(addr149);
                                       }
                                    }
                                    else
                                    {
                                       addr141:
                                       §§push(3);
                                       if(!_loc6_)
                                       {
                                       }
                                    }
                                    §§goto(addr149);
                                 }
                                 else
                                 {
                                    §§push(§"9§);
                                    if(!(_loc7_ && param3))
                                    {
                                       §§push(_loc5_);
                                       if(_loc6_ || param1)
                                       {
                                          addr119:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc6_)
                                             {
                                                addr122:
                                                §§push(2);
                                                if(_loc6_ || param2)
                                                {
                                                   §§goto(addr130);
                                                }
                                                §§goto(addr149);
                                             }
                                             else
                                             {
                                                §§goto(addr141);
                                             }
                                          }
                                          else
                                          {
                                             §§push(§9n§);
                                             if(!(_loc7_ && param3))
                                             {
                                                addr140:
                                                if(§§pop() === _loc5_)
                                                {
                                                   §§goto(addr141);
                                                }
                                                else
                                                {
                                                   §§goto(addr149);
                                                   §§push(4);
                                                }
                                                §§goto(addr149);
                                             }
                                          }
                                       }
                                       §§goto(addr140);
                                    }
                                 }
                                 §§goto(addr149);
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr122);
                     }
                     else
                     {
                        §§push(§,!0§);
                        if(_loc6_ || param1)
                        {
                           §§goto(addr88);
                        }
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr140);
               }
               §§goto(addr88);
            }
            §§goto(addr99);
         }
         §§goto(addr150);
      }
      
      public function get §%!B§() : Number
      {
         return this.§9!N§;
      }
      
      public function get push() : Number
      {
         return this.§1R§;
      }
      
      public function get §]!E§() : Number
      {
         return this.§^!Z§;
      }
      
      public function get damage() : Number
      {
         return this.§`&§;
      }
      
      public function get type() : int
      {
         return this.§>A§;
      }
   }
}
