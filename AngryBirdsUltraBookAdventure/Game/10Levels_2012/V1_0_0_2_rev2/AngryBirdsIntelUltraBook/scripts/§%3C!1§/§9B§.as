package §<!1§
{
   import §,!5§.§^g§;
   import §0X§.§&'§;
   import §^!+§.Texture;
   import §true§.§ _§;
   
   public class §9B§
   {
      
      public static const §%!>§:int = 0;
      
      public static const §]!=§:int = 6;
      
      public static const §+!]§:int = 7;
      
      public static const §;!r§:int = 8;
      
      public static const §=!%§:int = 3;
      
      public static const §#!s§:int = 5;
      
      public static const §4x§:int = 2;
      
      public static const §<I§:int = 1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §%!>§ = 0;
            loop0:
            while(true)
            {
               §]!=§ = 6;
               while(true)
               {
                  §+!]§ = 7;
                  while(true)
                  {
                     §;!r§ = 8;
                     continue loop0;
                     addr35:
                     if(!(_loc1_ && _loc2_))
                     {
                        return;
                        addr42:
                     }
                  }
                  addr64:
                  if(_loc1_ && _loc1_)
                  {
                     continue;
                  }
                  §<I§ = 1;
                  addr71:
                  if(!_loc2_)
                  {
                     loop6:
                     while(true)
                     {
                        if(_loc1_ && §9B§)
                        {
                           loop5:
                           while(true)
                           {
                              if(!(_loc1_ && §9B§))
                              {
                                 addr83:
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 §4x§ = 2;
                                 continue loop6;
                              }
                              addr100:
                              while(true)
                              {
                                 §#!s§ = 5;
                                 continue loop5;
                              }
                              §§goto(addr42);
                           }
                           continue loop0;
                        }
                        §§goto(addr64);
                     }
                     continue;
                  }
                  §§goto(addr35);
               }
            }
         }
         §§goto(addr100);
      }
      
      public var §<!]§:String;
      
      public var §6K§:int;
      
      protected var §#!%§:§&'§;
      
      public var §>j§:Number;
      
      public var §@§:String;
      
      public var §"g§:Number = 1;
      
      public var §-!!§:Number;
      
      private var §"n§:Boolean = false;
      
      private var §4!c§:String;
      
      private var §!!?§:int;
      
      private var §6r§:§2!W§;
      
      private var §!T§:§0"§;
      
      private var §]4§:§<!R§;
      
      public function §9B§(param1:String, param2:int, param3:§0"§, param4:§<!R§, param5:§2!W§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_)
         {
            super();
            while(true)
            {
               this.§<!]§ = param1;
               addr191:
               while(!_loc15_)
               {
                  this.§6K§ = param2;
               }
            }
         }
         while(true)
         {
            this.§!T§ = param3;
            while(true)
            {
               this.§4!c§ = param12;
               loop4:
               while(true)
               {
                  this.§!!?§ = param13;
                  addr171:
                  while(true)
                  {
                     this.§"n§ = param11;
                     continue loop4;
                  }
               }
               while(!(_loc15_ && param1))
               {
                  this.§6r§ = param5;
                  §§goto(addr130);
                  §§goto(addr45);
               }
            }
            while(_loc14_ || param1)
            {
               if(this.§"g§ <= 0)
               {
                  §§goto(addr130);
               }
               §§goto(addr32);
               §§goto(addr38);
            }
         }
      }
      
      public function get front() : Boolean
      {
         return this.§"n§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§4!c§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§!!?§;
      }
      
      public function §'!5§() : int
      {
         return this.shape.§@!P§();
      }
      
      public function §#]§() : int
      {
         return this.shape.§#g§();
      }
      
      public function §4_§() : int
      {
         return this.shape.§=!q§();
      }
      
      public function §`!E§() : Number
      {
         return this.§!T§.getValue(§0"§.§+!7§);
      }
      
      public function §#!N§() : Number
      {
         return Number(this.§!T§.getValue(§0"§.§5"§));
      }
      
      public function §?!Y§() : Number
      {
         return Number(this.§!T§.getValue(§0"§.§@![§));
      }
      
      public function §]>§() : Number
      {
         return Number(this.§!T§.getValue(§0"§.§;!j§));
      }
      
      public function §7E§() : Number
      {
         return Number(this.§!T§.getValue(§0"§.§#H§));
      }
      
      public function §`!B§() : Number
      {
         return Number(this.§!T§.getValue(§0"§.§-b§));
      }
      
      public function §]8§() : Number
      {
         return Number(this.§!T§.getValue(§0"§.§for §));
      }
      
      public function §[!q§() : int
      {
         return this.§>j§;
      }
      
      public function get material() : §0"§
      {
         return this.§!T§;
      }
      
      public function get shape() : §2!W§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Texture = null;
         if(_loc3_)
         {
            §§push(this.§6r§);
            if(_loc3_ || _loc3_)
            {
               if(!§§pop())
               {
                  _loc1_ = § _§.§!6§.animationManager.getAnimation(this.§<!]§).getFrame(0).texture;
                  addr32:
                  if(_loc3_)
                  {
                     §§push(this);
                     §§push(§§findproperty(§2!W§));
                     §§push(this.§<!]§);
                     §§push("Rectangle");
                     §§push(_loc1_.width);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(§^g§.§^!S§);
                        if(_loc3_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc3_ || _loc1_)
                           {
                              addr93:
                              §§push(§§pop() / 2);
                              §§push(_loc1_.height);
                              if(_loc3_)
                              {
                                 §§push(§§pop() * §^g§.§^!S§);
                                 if(!_loc2_)
                                 {
                                    addr102:
                                    §§push(§§pop() / 2);
                                 }
                                 §§pop().§6r§ = new §§pop().§2!W§(§§pop(),§§pop(),§§pop(),§§pop());
                                 addr108:
                                 return this.§6r§;
                                 addr106:
                              }
                           }
                           §§goto(addr93);
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr93);
                  }
               }
               §§goto(addr106);
            }
            §§goto(addr108);
         }
         §§goto(addr32);
      }
      
      public function get §!9§() : §<!R§
      {
         return this.§]4§;
      }
      
      public function get score() : int
      {
         return this.§#!%§.getValue();
      }
   }
}
