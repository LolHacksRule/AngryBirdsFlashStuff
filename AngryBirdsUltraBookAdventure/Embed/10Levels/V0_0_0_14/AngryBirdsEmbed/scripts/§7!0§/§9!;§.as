package §7!0§
{
   import §4!H§.§?_§;
   import §5!@§.Texture;
   import §5H§.§[k§;
   import §?b§.§7!,§;
   
   public class §9!;§
   {
      
      public static const §7k§:int = 0;
      
      public static const §1!<§:int = 6;
      
      public static const §2s§:int = 7;
      
      public static const §92§:int = 8;
      
      public static const §9S§:int = 3;
      
      public static const §]h§:int = 5;
      
      public static const §=!5§:int = 2;
      
      public static const § 1§:int = 1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §1!<§ = 6;
            if(!(_loc1_ && §9!;§))
            {
               §2s§ = 7;
               §92§ = 8;
               if(_loc2_)
               {
                  addr60:
                  §9S§ = 3;
                  if(!_loc1_)
                  {
                     §]h§ = 5;
                     addr68:
                     §=!5§ = 2;
                     if(_loc2_ || _loc2_)
                     {
                        § 1§ = 1;
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
      
      public var §2Z§:String;
      
      public var §>O§:int;
      
      protected var §;_§:§?_§;
      
      public var §=2§:Number;
      
      public var §5x§:String;
      
      public var § U§:Number = 1;
      
      public var § !,§:Number;
      
      private var §<4§:Boolean = false;
      
      private var § !4§:String;
      
      private var §?C§:int;
      
      private var §2! §:§<$§;
      
      private var §7!-§:§^!%§;
      
      private var §4!;§:§6Z§;
      
      public function §9!;§(param1:String, param2:int, param3:§^!%§, param4:§6Z§, param5:§<$§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         super();
         this.§2Z§ = param1;
         this.§>O§ = param2;
         this.§7!-§ = param3;
         if(_loc14_ || param2)
         {
            this.§ !4§ = param12;
            if(!(_loc15_ && param1))
            {
               this.§?C§ = param13;
               if(!_loc15_)
               {
                  this.§<4§ = param11;
                  this.§4!;§ = param4;
                  if(_loc14_ || param1)
                  {
                     this.§2! § = param5;
                     if(!_loc15_)
                     {
                        addr87:
                        this.§;_§ = new §?_§(param6);
                        this.§5x§ = param7;
                        this.§ U§ = param8;
                        if(this.§ U§ <= 0)
                        {
                           addr102:
                           this.§ U§ = 1;
                        }
                        this.§ !,§ = param9;
                        if(_loc14_)
                        {
                           addr110:
                           this.§=2§ = param10;
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
         return this.§<4§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§ !4§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§?C§;
      }
      
      public function §6c§() : int
      {
         return this.shape.§ r§();
      }
      
      public function §'t§() : int
      {
         return this.shape.§"!1§();
      }
      
      public function §1u§() : int
      {
         return this.shape.§,!%§();
      }
      
      public function § !%§() : Number
      {
         return this.§7!-§.getValue(§^!%§.§6H§);
      }
      
      public function §!N§() : Number
      {
         return Number(this.§7!-§.getValue(§^!%§.§ 8§));
      }
      
      public function §`!H§() : Number
      {
         return Number(this.§7!-§.getValue(§^!%§.§>!8§));
      }
      
      public function § !G§() : Number
      {
         return Number(this.§7!-§.getValue(§^!%§.§@!,§));
      }
      
      public function §-!+§() : Number
      {
         return Number(this.§7!-§.getValue(§^!%§.§,u§));
      }
      
      public function §7[§() : Number
      {
         return Number(this.§7!-§.getValue(§^!%§.§ E§));
      }
      
      public function §?J§() : Number
      {
         return Number(this.§7!-§.getValue(§^!%§.§-U§));
      }
      
      public function §7!5§() : int
      {
         return this.§=2§;
      }
      
      public function get material() : §^!%§
      {
         return this.§7!-§;
      }
      
      public function get shape() : §<$§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Texture = null;
         if(_loc3_)
         {
            §§push(this.§2! §);
            if(_loc3_ || _loc1_)
            {
               if(!§§pop())
               {
                  _loc1_ = §[k§.§&@§.§!`§.§`l§(this.§2Z§).getFrame(0).texture;
                  addr32:
                  if(!_loc2_)
                  {
                     §§push(this);
                     §§push(§§findproperty(§<$§));
                     §§push(this.§2Z§);
                     §§push("Rectangle");
                     §§push(_loc1_.width);
                     if(_loc3_)
                     {
                        §§push(§7!,§.§ '§);
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
                              §§push(§§pop() * §7!,§.§ '§);
                              if(!(_loc2_ && this))
                              {
                                 §§push(§§pop() / 2);
                              }
                           }
                           §§pop().§2! § = new §§pop().§<$§(§§pop(),§§pop(),§§pop(),§§pop());
                           addr113:
                           return this.§2! §;
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
      
      public function get §]!=§() : §6Z§
      {
         return this.§4!;§;
      }
      
      public function get score() : int
      {
         return this.§;_§.getValue();
      }
   }
}
