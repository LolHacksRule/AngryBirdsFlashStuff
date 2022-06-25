package §`K§
{
   import § !;§.§`! §;
   import §"!5§.§,!!§;
   import §%x§.§#;§;
   import each.Texture;
   
   public class §+i§
   {
      
      public static const §!!@§:int = 0;
      
      public static const §35§:int = 6;
      
      public static const §'+§:int = 7;
      
      public static const § k§:int = 8;
      
      public static const §]D§:int = 3;
      
      public static const §try§:int = 5;
      
      public static const §+^§:int = 2;
      
      public static const §5!+§:int = 1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §35§ = 6;
            if(!(_loc1_ && §+i§))
            {
               §'+§ = 7;
               § k§ = 8;
               if(_loc2_)
               {
                  addr60:
                  §]D§ = 3;
                  if(!_loc1_)
                  {
                     §try§ = 5;
                     addr68:
                     §+^§ = 2;
                     if(_loc2_ || _loc2_)
                     {
                        §5!+§ = 1;
                     }
                  }
                  §§goto(addr68);
               }
               return;
            }
            §§goto(addr60);
         }
         §§goto(addr68);
      }
      
      public var §'!,§:String;
      
      public var §'F§:int;
      
      protected var §';§:§`! §;
      
      public var §22§:Number;
      
      public var §,m§:String;
      
      public var §`9§:Number = 1;
      
      public var §8!,§:Number;
      
      private var §2!1§:Boolean = false;
      
      private var §32§:String;
      
      private var § !B§:int;
      
      private var §;!3§:§2z§;
      
      private var §!1§:§7g§;
      
      private var §``§:§0r§;
      
      public function §+i§(param1:String, param2:int, param3:§7g§, param4:§0r§, param5:§2z§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         super();
         this.§'!,§ = param1;
         this.§'F§ = param2;
         this.§!1§ = param3;
         if(_loc14_ || param2)
         {
            this.§32§ = param12;
            if(!(_loc15_ && param1))
            {
               this.§ !B§ = param13;
               if(!_loc15_)
               {
                  this.§2!1§ = param11;
                  this.§``§ = param4;
                  if(_loc14_ || param1)
                  {
                     this.§;!3§ = param5;
                     if(!_loc15_)
                     {
                        addr87:
                        this.§';§ = new §`! §(param6);
                        this.§,m§ = param7;
                        this.§`9§ = param8;
                        if(this.§`9§ <= 0)
                        {
                           addr102:
                           this.§`9§ = 1;
                        }
                        this.§8!,§ = param9;
                        if(_loc14_)
                        {
                           addr110:
                           this.§22§ = param10;
                        }
                     }
                     §§goto(addr102);
                  }
                  return;
               }
               §§goto(addr87);
            }
            §§goto(addr102);
         }
         §§goto(addr110);
      }
      
      public function get front() : Boolean
      {
         return this.§2!1§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§32§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§ !B§;
      }
      
      public function §-!F§() : int
      {
         return this.shape.§'4§();
      }
      
      public function §&+§() : int
      {
         return this.shape.§`2§();
      }
      
      public function §7!9§() : int
      {
         return this.shape.§[h§();
      }
      
      public function §<!E§() : Number
      {
         return this.§!1§.getValue(§7g§.§0^§);
      }
      
      public function §+!9§() : Number
      {
         return Number(this.§!1§.getValue(§7g§.§7i§));
      }
      
      public function §]!,§() : Number
      {
         return Number(this.§!1§.getValue(§7g§.§<L§));
      }
      
      public function §;F§() : Number
      {
         return Number(this.§!1§.getValue(§7g§.§+n§));
      }
      
      public function §^!5§() : Number
      {
         return Number(this.§!1§.getValue(§7g§.§5X§));
      }
      
      public function §9'§() : Number
      {
         return Number(this.§!1§.getValue(§7g§.§;!"§));
      }
      
      public function §@!>§() : Number
      {
         return Number(this.§!1§.getValue(§7g§.§8!@§));
      }
      
      public function §=!8§() : int
      {
         return this.§22§;
      }
      
      public function get material() : §7g§
      {
         return this.§!1§;
      }
      
      public function get shape() : §2z§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Texture = null;
         if(_loc3_)
         {
            §§push(this.§;!3§);
            if(_loc3_ || _loc1_)
            {
               if(!§§pop())
               {
                  _loc1_ = §,!!§.§;4§.§+!!§.§,V§(this.§'!,§).getFrame(0).texture;
                  addr32:
                  if(!_loc2_)
                  {
                     §§push(this);
                     §§push(§§findproperty(§2z§));
                     §§push(this.§'!,§);
                     §§push("Rectangle");
                     §§push(_loc1_.width);
                     if(_loc3_)
                     {
                        §§push(§#;§.§`!2§);
                        if(_loc3_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc3_ || _loc2_)
                           {
                              addr86:
                              §§push(§§pop() / 2);
                           }
                           §§push(_loc1_.height);
                           if(!(_loc2_ && _loc2_))
                           {
                              addr97:
                              §§push(§§pop() * §#;§.§`!2§);
                              if(!(_loc2_ && this))
                              {
                                 §§push(§§pop() / 2);
                              }
                           }
                           §§pop().§;!3§ = new §§pop().§2z§(§§pop(),§§pop(),§§pop(),§§pop());
                           addr113:
                           return this.§;!3§;
                           addr111:
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr86);
                  }
               }
               §§goto(addr111);
            }
            §§goto(addr113);
         }
         §§goto(addr32);
      }
      
      public function get §6!6§() : §0r§
      {
         return this.§``§;
      }
      
      public function get score() : int
      {
         return this.§';§.getValue();
      }
   }
}
