package §-!7§
{
   public class §?L§
   {
      
      public static const §#-§:int = 0;
      
      public static const §'H§:int = 1;
      
      public static const §6!1§:int = 2;
      
      public static const §8Z§:int = 3;
      
      public static const §0!;§:int = 4;
      
      private static var final:§?L§;
      
      private static var §?!A§:§?L§;
      
      private static var §,[§:§?L§;
      
      private static var TNT:§?L§;
      
      private static var §=!C§:§?L§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §#-§ = 0;
            loop0:
            while(true)
            {
               §'H§ = 1;
               while(true)
               {
                  §6!1§ = 2;
                  loop2:
                  while(_loc1_ || §?L§)
                  {
                     §8Z§ = 3;
                     loop3:
                     while(true)
                     {
                        §0!;§ = 4;
                        loop4:
                        for(; _loc1_; while(_loc1_ || _loc2_)
                        {
                           §,[§ = new §?L§(0,0,15,1750,5,300,§8Z§);
                           §§goto(addr101);
                        })
                        {
                           final = new §?L§(0,0,10,500,7.5,600,§#-§);
                           while(true)
                           {
                              §?!A§ = new §?L§(0,0,10,500,7.5,600,§'H§);
                              continue loop4;
                              addr101:
                              while(_loc1_ || _loc1_)
                              {
                                 TNT = new §?L§(0,0,10,1500,5,150,§6!1§);
                                 while(_loc1_ || _loc2_)
                                 {
                                    continue loop0;
                                    §=!C§ = new §?L§(0,0,5,10,7,275,§0!;§);
                                    if(_loc1_)
                                    {
                                       if(_loc1_)
                                       {
                                          continue loop3;
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr153);
      }
      
      public var x:Number;
      
      public var y:Number;
      
      private var §!!5§:Number;
      
      private var §0>§:Number;
      
      private var §%!1§:Number;
      
      private var §&!L§:Number;
      
      private var §&!9§:int;
      
      public function §?L§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            super();
         }
         while(true)
         {
            this.x = param1;
            loop1:
            while(true)
            {
               this.y = param2;
               do
               {
                  this.§!!5§ = param3;
                  do
                  {
                     this.§0>§ = param4;
                     continue loop1;
                  }
                  while(!_loc9_);
                  
               }
               while(_loc8_);
               
               return;
            }
         }
      }
      
      public static function §<!V§(param1:int, param2:Number, param3:Number) : §?L§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:§?L§ = null;
         §§push(param1);
         if(!_loc6_)
         {
            var _loc5_:* = §§pop();
            if(_loc7_)
            {
               §§push(§'H§);
               if(_loc7_)
               {
                  §§push(_loc5_);
                  if(_loc7_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc6_)
                        {
                           §§push(0);
                           if(_loc7_ || §?L§)
                           {
                              addr151:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc4_ = §?!A§;
                                    break;
                                 case 1:
                                    _loc4_ = TNT;
                                    break;
                                 case 2:
                                    _loc4_ = §,[§;
                                    break;
                                 case 3:
                                    _loc4_ = §=!C§;
                                    break;
                                 default:
                                    _loc4_ = final;
                              }
                              return new §?L§(param2,param3,_loc4_.§0b§,_loc4_.push,_loc4_.§`u§,_loc4_.damage,param1);
                              addr150:
                           }
                           else
                           {
                              addr140:
                              if(§§pop() === _loc5_)
                              {
                                 addr142:
                                 §§push(3);
                                 if(_loc6_)
                                 {
                                 }
                                 §§goto(addr150);
                              }
                              else
                              {
                                 §§goto(addr150);
                                 §§push(4);
                              }
                              §§goto(addr150);
                           }
                        }
                        else
                        {
                           addr95:
                           §§push(1);
                           if(_loc6_)
                           {
                           }
                        }
                        §§goto(addr150);
                     }
                     else
                     {
                        §§push(§6!1§);
                        if(!(_loc6_ && param1))
                        {
                           §§push(_loc5_);
                           if(!_loc6_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc7_)
                                 {
                                    §§goto(addr95);
                                 }
                                 else
                                 {
                                    addr123:
                                    §§push(2);
                                    if(_loc6_ && §?L§)
                                    {
                                    }
                                    §§goto(addr150);
                                 }
                              }
                              else
                              {
                                 §§push(§8Z§);
                                 if(_loc7_ || param1)
                                 {
                                    addr107:
                                    §§push(_loc5_);
                                    if(!(_loc6_ && §?L§))
                                    {
                                       addr115:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc6_ && param1))
                                          {
                                             §§goto(addr123);
                                          }
                                          else
                                          {
                                             §§goto(addr142);
                                          }
                                       }
                                       else
                                       {
                                          §§push(§0!;§);
                                          if(_loc7_ || §?L§)
                                          {
                                             §§goto(addr140);
                                          }
                                          §§goto(addr150);
                                       }
                                       §§goto(addr150);
                                    }
                                    §§goto(addr140);
                                 }
                              }
                              §§goto(addr150);
                           }
                           §§goto(addr115);
                        }
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr140);
               }
               §§goto(addr107);
            }
            §§goto(addr142);
         }
         §§goto(addr151);
      }
      
      public function get §0b§() : Number
      {
         return this.§!!5§;
      }
      
      public function get push() : Number
      {
         return this.§0>§;
      }
      
      public function get §`u§() : Number
      {
         return this.§%!1§;
      }
      
      public function get damage() : Number
      {
         return this.§&!L§;
      }
      
      public function get type() : int
      {
         return this.§&!9§;
      }
   }
}
