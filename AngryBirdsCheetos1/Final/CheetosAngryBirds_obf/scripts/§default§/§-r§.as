package §default§
{
   import §!X§.§86§;
   import §#!F§.§78§;
   import §?m§.§7?§;
   import §]!B§.Texture;
   
   public class §-r§
   {
      
      public static const §#!]§:int = 0;
      
      public static const §@j§:int = 6;
      
      public static const §9N§:int = 7;
      
      public static const §5o§:int = 8;
      
      public static const §"!1§:int = 3;
      
      public static const §`T§:int = 5;
      
      public static const §+!S§:int = 2;
      
      public static const §^9§:int = 1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §#!]§ = 0;
         }
         loop0:
         while(true)
         {
            §@j§ = 6;
            loop1:
            while(true)
            {
               §9N§ = 7;
               loop2:
               while(true)
               {
                  §5o§ = 8;
                  loop3:
                  do
                  {
                     §"!1§ = 3;
                     loop4:
                     while(!_loc1_)
                     {
                        §`T§ = 5;
                        loop5:
                        while(!_loc1_)
                        {
                           §+!S§ = 2;
                           while(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 §^9§ = 1;
                                 if(!(_loc1_ && §-r§))
                                 {
                                    if(_loc2_ || _loc1_)
                                    {
                                       continue loop3;
                                    }
                                    continue loop5;
                                    continue loop5;
                                 }
                                 continue;
                                 continue;
                              }
                              continue loop1;
                           }
                           continue loop4;
                        }
                        continue loop2;
                     }
                     continue loop0;
                  }
                  while(_loc1_ && §-r§);
                  
                  return;
               }
            }
         }
      }
      
      public var §2!1§:String;
      
      public var §?n§:int;
      
      protected var §;[§:§78§;
      
      public var § ! §:Number;
      
      public var §,N§:String;
      
      public var §1>§:Number = 1;
      
      public var §+?§:Number;
      
      private var §use§:Boolean = false;
      
      private var § !+§:§<A§;
      
      private var §"!;§:§-g§;
      
      private var §6!%§:§!A§;
      
      public function §-r§(param1:String, param2:int, param3:§-g§, param4:§!A§, param5:§<A§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!_loc12_)
         {
            super();
            while(true)
            {
               this.§2!1§ = param1;
               loop1:
               while(true)
               {
                  this.§?n§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§"!;§ = param3;
                     while(true)
                     {
                        this.§use§ = param11;
                        while(true)
                        {
                           this.§6!%§ = param4;
                           addr141:
                           while(_loc13_)
                           {
                              continue loop1;
                           }
                        }
                        addr117:
                        if(_loc13_ || param1)
                        {
                           continue loop2;
                        }
                     }
                  }
               }
               if(_loc12_ && param3)
               {
                  continue;
               }
               this.§1>§ = 1;
               §§goto(addr72);
            }
         }
         while(true)
         {
            if(this.§1>§ <= 0)
            {
               §§goto(addr60);
            }
            §§goto(addr43);
         }
      }
      
      public function get front() : Boolean
      {
         return this.§use§;
      }
      
      public function §=![§() : int
      {
         return this.shape.§<!"§();
      }
      
      public function §6N§() : int
      {
         return this.shape.§"@§();
      }
      
      public function §-v§() : int
      {
         return this.shape.§,7§();
      }
      
      public function §0e§() : Number
      {
         return this.§"!;§.getValue(§-g§.§&q§);
      }
      
      public function §2C§() : Number
      {
         return Number(this.§"!;§.getValue(§-g§.§ !H§));
      }
      
      public function § Z§() : Number
      {
         return Number(this.§"!;§.getValue(§-g§.§;!]§));
      }
      
      public function §5!J§() : Number
      {
         return Number(this.§"!;§.getValue(§-g§.§1n§));
      }
      
      public function §%$§() : Number
      {
         return Number(this.§"!;§.getValue(§-g§.§>!I§));
      }
      
      public function §0Q§() : Number
      {
         return Number(this.§"!;§.getValue(§-g§.§[B§));
      }
      
      public function §^i§() : Number
      {
         return Number(this.§"!;§.getValue(§-g§.§+!,§));
      }
      
      public function §get §() : int
      {
         return this.§ ! §;
      }
      
      public function get material() : §-g§
      {
         return this.§"!;§;
      }
      
      public function get shape() : §<A§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Texture = null;
         if(_loc3_)
         {
            §§push(this.§ !+§);
            if(!(_loc2_ && this))
            {
               if(!§§pop())
               {
                  addr32:
                  _loc1_ = §7?§.§4!H§.§true§.§>f§(this.§2!1§).getFrame(0).texture;
                  if(_loc3_ || _loc1_)
                  {
                     §§push(this);
                     §§push(§§findproperty(§<A§));
                     §§push(this.§2!1§);
                     §§push("Rectangle");
                     §§push(_loc1_.width);
                     if(_loc3_)
                     {
                        §§push(§86§.§7!4§);
                        if(!(_loc2_ && _loc1_))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc3_ || _loc1_)
                           {
                              addr86:
                              §§push(§§pop() / 2);
                           }
                           §§push(_loc1_.height);
                           if(_loc3_ || this)
                           {
                              §§push(§§pop() * §86§.§7!4§);
                              if(_loc3_)
                              {
                                 addr112:
                                 §§push(§§pop() / 2);
                              }
                           }
                           §§pop().§ !+§ = new §§pop().§<A§(§§pop(),§§pop(),§§pop(),§§pop());
                           addr118:
                           return this.§ !+§;
                           addr116:
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr86);
                  }
               }
               §§goto(addr116);
            }
            §§goto(addr118);
         }
         §§goto(addr32);
      }
      
      public function get §-p§() : §!A§
      {
         return this.§6!%§;
      }
      
      public function get score() : int
      {
         return this.§;[§.getValue();
      }
   }
}
