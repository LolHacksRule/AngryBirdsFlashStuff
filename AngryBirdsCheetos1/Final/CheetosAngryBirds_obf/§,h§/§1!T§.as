package §,h§
{
   public class §1!T§
   {
      
      public static const §>!$§:int = 0;
      
      public static const § 9§:int = 1;
      
      public static const §-!Z§:int = 2;
      
      public static const §,!^§:int = 3;
      
      public static const §`!D§:int = 4;
      
      private static var §%!"§:§1!T§;
      
      private static var §1!8§:§1!T§;
      
      private static var §7K§:§1!T§;
      
      private static var TNT:§1!T§;
      
      private static var §4R§:§1!T§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §>!$§ = 0;
            while(true)
            {
               § 9§ = 1;
               addr164:
               while(_loc2_)
               {
                  §-!Z§ = 2;
                  while(true)
                  {
                     §,!^§ = 3;
                     addr144:
                     while(true)
                     {
                        §`!D§ = 4;
                     }
                  }
               }
            }
         }
         loop4:
         while(true)
         {
            §%!"§ = new §1!T§(0,0,10,500,7.5,600,§>!$§);
            loop5:
            while(!_loc1_)
            {
               if(!_loc1_)
               {
                  §1!8§ = new §1!T§(0,0,10,500,7.5,600,§ 9§);
                  while(!_loc1_)
                  {
                     §7K§ = new §1!T§(0,0,15,1750,5,300,§,!^§);
                     loop7:
                     while(!(_loc1_ && _loc1_))
                     {
                        TNT = new §1!T§(0,0,10,1500,5,150,§-!Z§);
                        while(true)
                        {
                           if(_loc2_)
                           {
                              continue loop4;
                           }
                           continue loop7;
                           addr72:
                           §4R§ = new §1!T§(0,0,5,10,7,275,§`!D§);
                           if(_loc2_ || §1!T§)
                           {
                              if(_loc2_)
                              {
                                 return;
                              }
                              continue loop5;
                           }
                        }
                        continue loop4;
                     }
                  }
                  §§goto(addr144);
               }
               else
               {
                  §§goto(addr164);
               }
            }
            §§goto(addr149);
         }
      }
      
      public var x:Number;
      
      public var y:Number;
      
      private var §<!2§:Number;
      
      private var §+!L§:Number;
      
      private var §<6§:Number;
      
      private var §'U§:Number;
      
      private var §`Z§:int;
      
      public function §1!T§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || param2)
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
                  loop2:
                  while(true)
                  {
                     this.§<!2§ = param3;
                     while(!_loc9_)
                     {
                        this.§+!L§ = param4;
                        loop4:
                        do
                        {
                           this.§<6§ = param5;
                           loop5:
                           while(!_loc9_)
                           {
                              this.§'U§ = param6;
                              while(true)
                              {
                                 if(_loc8_)
                                 {
                                    continue loop2;
                                 }
                                 continue loop5;
                                 addr67:
                                 this.§`Z§ = param7;
                                 if(_loc8_)
                                 {
                                    continue loop4;
                                 }
                              }
                              continue loop2;
                           }
                           continue loop1;
                        }
                        while(!(_loc8_ || param3));
                        
                        if(!_loc8_)
                        {
                           continue;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public static function §%!J§(param1:int, param2:Number, param3:Number) : §1!T§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§1!T§ = null;
         §§push(param1);
         if(_loc6_ || §1!T§)
         {
            var _loc5_:* = §§pop();
            if(!(_loc7_ && param3))
            {
               §§push(§ 9§);
               if(!(_loc7_ && param1))
               {
                  §§push(_loc5_);
                  if(!_loc7_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc7_)
                        {
                           §§push(0);
                           if(!(_loc6_ || param3))
                           {
                              addr159:
                              if(§§pop() === _loc5_)
                              {
                                 addr161:
                                 §§push(3);
                                 if(!_loc7_)
                                 {
                                    addr164:
                                 }
                              }
                              else
                              {
                                 §§push(4);
                              }
                           }
                        }
                        else
                        {
                           addr109:
                           §§push(1);
                           if(_loc6_ || param2)
                           {
                              addr117:
                           }
                           else
                           {
                              addr150:
                           }
                        }
                        addr170:
                        switch(§§pop())
                        {
                           case 0:
                              _loc4_ = §1!8§;
                              break;
                           case 1:
                              _loc4_ = TNT;
                              break;
                           case 2:
                              _loc4_ = §7K§;
                              break;
                           case 3:
                              _loc4_ = §4R§;
                              break;
                           default:
                              _loc4_ = §%!"§;
                        }
                        return new §1!T§(param2,param3,_loc4_.§0k§,_loc4_.push,_loc4_.§<!&§,_loc4_.damage,param1);
                        addr169:
                     }
                     else
                     {
                        §§push(§-!Z§);
                        if(!_loc7_)
                        {
                           §§push(_loc5_);
                           if(!(_loc7_ && param2))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc7_)
                                 {
                                    §§goto(addr109);
                                 }
                                 else
                                 {
                                    addr142:
                                    §§push(2);
                                    if(_loc6_ || param3)
                                    {
                                       §§goto(addr150);
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(§,!^§);
                                 if(_loc6_ || param2)
                                 {
                                    addr126:
                                    §§push(_loc5_);
                                    if(!(_loc7_ && §1!T§))
                                    {
                                       addr134:
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc6_ || param1)
                                          {
                                             §§goto(addr142);
                                          }
                                          else
                                          {
                                             §§goto(addr161);
                                          }
                                       }
                                       else
                                       {
                                          §§push(§`!D§);
                                          if(_loc6_ || param2)
                                          {
                                             §§goto(addr159);
                                          }
                                       }
                                       §§goto(addr164);
                                    }
                                 }
                                 §§goto(addr159);
                              }
                              §§goto(addr169);
                           }
                           §§goto(addr134);
                        }
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr159);
               }
               §§goto(addr126);
            }
            §§goto(addr109);
         }
         §§goto(addr170);
      }
      
      public function get §0k§() : Number
      {
         return this.§<!2§;
      }
      
      public function get push() : Number
      {
         return this.§+!L§;
      }
      
      public function get §<!&§() : Number
      {
         return this.§<6§;
      }
      
      public function get damage() : Number
      {
         return this.§'U§;
      }
      
      public function get type() : int
      {
         return this.§`Z§;
      }
   }
}
