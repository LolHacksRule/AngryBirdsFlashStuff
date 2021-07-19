package §9_§
{
   public class §7]§
   {
      
      public static const §4!4§:int = 0;
      
      public static const §#!7§:int = 1;
      
      public static const §'l§:int = 2;
      
      public static const §`!$§:int = 3;
      
      public static const §1!!§:int = 4;
      
      private static var §1<§:§7]§;
      
      private static var §5!7§:§7]§;
      
      private static var §-P§:§7]§;
      
      private static var §;x§:§7]§;
      
      private static var §#!A§:§7]§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §4!4§ = 0;
            loop0:
            while(true)
            {
               §#!7§ = 1;
               §'l§ = 2;
               while(true)
               {
                  §`!$§ = 3;
                  loop2:
                  while(_loc1_)
                  {
                     §1!!§ = 4;
                     §1<§ = new §7]§(0,0,10,500,7.5,600,§4!4§);
                     loop3:
                     for(; _loc1_; while(!(_loc2_ && _loc2_))
                     {
                        §;x§ = new §7]§(0,0,10,1500,5,150,§'l§);
                        do
                        {
                           §#!A§ = new §7]§(0,0,5,10,7,275,§1!!§);
                        }
                        while(_loc2_ && §7]§);
                        
                        if(!(_loc1_ || _loc1_))
                        {
                           continue;
                        }
                        §§goto(addr49);
                     })
                     {
                        §5!7§ = new §7]§(0,0,10,500,7.5,600,§#!7§);
                        do
                        {
                           §-P§ = new §7]§(0,0,15,1750,5,300,§`!$§);
                           continue loop3;
                        }
                        while(!(_loc1_ || _loc2_));
                        
                        if(!_loc1_)
                        {
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public var x:Number;
      
      public var y:Number;
      
      private var §^a§:Number;
      
      private var §!9§:Number;
      
      private var §#!§:Number;
      
      private var § d§:Number;
      
      private var §@!B§:int;
      
      public function §7]§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         super();
         loop0:
         while(true)
         {
            this.x = param1;
            while(true)
            {
               this.y = param2;
               continue loop0;
               addr53:
               if(_loc8_ || param2)
               {
                  this.§ d§ = param6;
                  loop5:
                  for(; !_loc9_; this.§@!B§ = param7,if(_loc8_)
                  {
                     return;
                  })
                  {
                     if(_loc8_)
                     {
                        continue;
                     }
                     addr75:
                     while(true)
                     {
                        this.§#!§ = param5;
                        break loop5;
                     }
                  }
                  while(_loc8_)
                  {
                     §§goto(addr53);
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §7]§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:§7]§ = null;
         §§push(param1);
         if(!(_loc6_ && param1))
         {
            var _loc5_:* = §§pop();
            if(_loc7_)
            {
               §§push(§#!7§);
               if(_loc7_)
               {
                  §§push(_loc5_);
                  if(_loc7_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_)
                        {
                           addr131:
                           §§push(2);
                           if(!(_loc6_ && §7]§))
                           {
                              addr149:
                           }
                           else
                           {
                              addr151:
                              if(§§pop() === _loc5_)
                              {
                                 addr153:
                                 §§push(3);
                                 if(!_loc7_)
                                 {
                                 }
                                 §§goto(addr161);
                              }
                              else
                              {
                                 addr161:
                                 addr162:
                                 switch(0)
                                 {
                                    case 0:
                                       _loc4_ = §5!7§;
                                       break;
                                    case 1:
                                       _loc4_ = §;x§;
                                       break;
                                    case 2:
                                       _loc4_ = §-P§;
                                       break;
                                    case 3:
                                       _loc4_ = §#!A§;
                                       break;
                                    default:
                                       _loc4_ = §1<§;
                                 }
                                 return new §7]§(param2,param3,_loc4_.§-q§,_loc4_.push,_loc4_.§`K§,_loc4_.damage,param1);
                                 §§push(4);
                              }
                           }
                        }
                     }
                     else
                     {
                        §§push(§'l§);
                        if(!(_loc6_ && §7]§))
                        {
                           §§push(_loc5_);
                           if(!(_loc6_ && §7]§))
                           {
                              addr95:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc7_ || param1)
                                 {
                                    §§push(1);
                                    if(!_loc6_)
                                    {
                                       §§goto(addr161);
                                    }
                                    else
                                    {
                                       addr115:
                                       §§push(_loc5_);
                                       if(!(_loc6_ && param3))
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc7_ || param1)
                                             {
                                                §§goto(addr131);
                                             }
                                             §§goto(addr153);
                                          }
                                          else
                                          {
                                             §§push(§1!!§);
                                          }
                                       }
                                       §§goto(addr151);
                                    }
                                 }
                                 §§goto(addr131);
                              }
                              else
                              {
                                 §§push(§`!$§);
                                 if(_loc7_ || param1)
                                 {
                                    §§goto(addr115);
                                 }
                              }
                              §§goto(addr149);
                           }
                           §§goto(addr151);
                        }
                     }
                     §§goto(addr161);
                  }
                  §§goto(addr95);
               }
               §§goto(addr161);
            }
            §§goto(addr153);
         }
         §§goto(addr162);
      }
      
      public function get §-q§() : Number
      {
         return this.§^a§;
      }
      
      public function get push() : Number
      {
         return this.§!9§;
      }
      
      public function get §`K§() : Number
      {
         return this.§#!§;
      }
      
      public function get damage() : Number
      {
         return this.§ d§;
      }
      
      public function get type() : int
      {
         return this.§@!B§;
      }
   }
}
