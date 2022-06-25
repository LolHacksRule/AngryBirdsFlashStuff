package §-d§
{
   import §2_§.§'u§;
   import §4>§.Texture;
   import §>! §.§^!c§;
   import §]+§.§=E§;
   
   public class §>r§
   {
      
      public static const §&"§:int = 0;
      
      public static const §;!?§:int = 6;
      
      public static const §+P§:int = 7;
      
      public static const §0=§:int = 8;
      
      public static const §7b§:int = 3;
      
      public static const §`!s§:int = 5;
      
      public static const §@!g§:int = 2;
      
      public static const §>t§:int = 1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §&"§ = 0;
            while(true)
            {
               §;!?§ = 6;
               while(_loc2_)
               {
                  §+P§ = 7;
                  while(true)
                  {
                     §0=§ = 8;
                  }
                  if(_loc2_ || §>r§)
                  {
                     return;
                     addr61:
                  }
               }
            }
         }
         loop3:
         while(true)
         {
            §7b§ = 3;
            while(true)
            {
               §`!s§ = 5;
               loop5:
               for(; !_loc1_; if(_loc2_ || _loc2_)
               {
                  continue loop3;
               })
               {
                  §@!g§ = 2;
                  while(_loc2_)
                  {
                     §>t§ = 1;
                     if(_loc2_)
                     {
                        continue loop5;
                     }
                  }
                  §§goto(addr100);
               }
            }
            if(!(_loc2_ || _loc2_))
            {
               continue;
            }
            §§goto(addr54);
         }
         §§goto(addr61);
      }
      
      public var §^r§:String;
      
      public var §]!g§:int;
      
      protected var §>!X§:§=E§;
      
      public var §'!u§:Number;
      
      public var §0!R§:String;
      
      public var §7!N§:Number = 1;
      
      public var §]l§:Number;
      
      private var §,!p§:Boolean = false;
      
      private var §&;§:String;
      
      private var §7#§:int;
      
      private var §]n§:§7]§;
      
      private var §]!l§:§3!F§;
      
      private var §[!K§:§-C§;
      
      public function §>r§(param1:String, param2:int, param3:§3!F§, param4:§-C§, param5:§7]§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_)
         {
            super();
            while(true)
            {
               this.§^r§ = param1;
               while(true)
               {
                  this.§]!g§ = param2;
                  addr176:
                  while(!_loc15_)
                  {
                     this.§]!l§ = param3;
                     while(true)
                     {
                        this.§&;§ = param12;
                     }
                  }
               }
            }
            addr186:
         }
         loop4:
         while(true)
         {
            this.§7#§ = param13;
            loop5:
            while(true)
            {
               if(_loc14_)
               {
                  this.§,!p§ = param11;
                  while(true)
                  {
                     this.§[!K§ = param4;
                     while(true)
                     {
                        this.§]n§ = param5;
                        loop8:
                        for(; !(_loc15_ && param3); while(_loc14_ || this)
                        {
                           this.§7!N§ = param8;
                           continue loop5;
                           if(_loc14_ || param3)
                           {
                              return;
                           }
                        })
                        {
                           this.§>!X§ = new §=E§(param6);
                           while(_loc14_)
                           {
                              this.§0!R§ = param7;
                              continue loop8;
                           }
                           §§goto(addr171);
                        }
                     }
                     loop13:
                     for(; _loc14_ || param2; if(!(_loc14_ || param2))
                     {
                        continue;
                     },§§goto(addr36))
                     {
                        while(true)
                        {
                           this.§]l§ = param9;
                           loop15:
                           while(true)
                           {
                              if(_loc14_)
                              {
                                 continue loop4;
                              }
                              addr63:
                              while(true)
                              {
                                 if(_loc14_)
                                 {
                                    if(!_loc15_)
                                    {
                                       this.§7!N§ = 1;
                                       break loop15;
                                    }
                                    break;
                                 }
                                 continue loop5;
                              }
                              addr57:
                              §§goto(addr120);
                              this.§'!u§ = param10;
                              if(!_loc15_)
                              {
                                 continue loop13;
                              }
                           }
                           continue loop13;
                        }
                        §§goto(addr36);
                     }
                  }
               }
               else
               {
                  §§goto(addr186);
               }
               §§goto(addr171);
            }
         }
      }
      
      public function get front() : Boolean
      {
         return this.§,!p§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§&;§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§7#§;
      }
      
      public function §0E§() : int
      {
         return this.shape.§8X§();
      }
      
      public function §29§() : int
      {
         return this.shape.§2p§();
      }
      
      public function §=!F§() : int
      {
         return this.shape.§#!L§();
      }
      
      public function §!!r§() : Number
      {
         return this.§]!l§.getValue(§3!F§.§5C§);
      }
      
      public function §7i§() : Number
      {
         return Number(this.§]!l§.getValue(§3!F§.§]!,§));
      }
      
      public function §#h§() : Number
      {
         return Number(this.§]!l§.getValue(§3!F§.§%!z§));
      }
      
      public function §<!A§() : Number
      {
         return Number(this.§]!l§.getValue(§3!F§.§!x§));
      }
      
      public function §5!v§() : Number
      {
         return Number(this.§]!l§.getValue(§3!F§.§"!E§));
      }
      
      public function §[!d§() : Number
      {
         return Number(this.§]!l§.getValue(§3!F§.§+!Q§));
      }
      
      public function §9!!§() : Number
      {
         return Number(this.§]!l§.getValue(§3!F§.§[!=§));
      }
      
      public function §7!I§() : int
      {
         return this.§'!u§;
      }
      
      public function get material() : §3!F§
      {
         return this.§]!l§;
      }
      
      public function get shape() : §7]§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Texture = null;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§]n§);
            if(_loc3_ || this)
            {
               if(!§§pop())
               {
                  _loc1_ = §^!c§.§5!Y§.animationManager.getAnimation(this.§^r§).getFrame(0).texture;
                  addr37:
                  if(!_loc2_)
                  {
                     §§push(this);
                     §§push(§§findproperty(§7]§));
                     §§push(this.§^r§);
                     §§push("Rectangle");
                     §§push(_loc1_.width);
                     if(_loc3_)
                     {
                        §§push(§'u§.§18§);
                        if(!_loc2_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc3_)
                           {
                              addr86:
                              §§push(§§pop() / 2);
                           }
                           §§push(_loc1_.height);
                           if(_loc3_)
                           {
                              §§push(§§pop() * §'u§.§18§);
                              if(!(_loc2_ && this))
                              {
                                 §§push(§§pop() / 2);
                              }
                           }
                        }
                        §§pop().§]n§ = new §§pop().§7]§(§§pop(),§§pop(),§§pop(),§§pop());
                        addr108:
                        return this.§]n§;
                        addr106:
                     }
                     §§goto(addr86);
                  }
               }
               §§goto(addr106);
            }
            §§goto(addr108);
         }
         §§goto(addr37);
      }
      
      public function get §;!"§() : §-C§
      {
         return this.§[!K§;
      }
      
      public function get score() : int
      {
         return this.§>!X§.getValue();
      }
   }
}
