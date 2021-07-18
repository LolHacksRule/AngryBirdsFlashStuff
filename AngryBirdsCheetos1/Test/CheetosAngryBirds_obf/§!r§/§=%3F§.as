package §!r§
{
   import §!V§.§!!i§;
   import §,§.§ p§;
   import §]!a§.Texture;
   import §`h§.§@!Z§;
   
   public class §=?§
   {
      
      public static const §[b§:int = 0;
      
      public static const §&H§:int = 6;
      
      public static const §<P§:int = 7;
      
      public static const §6M§:int = 8;
      
      public static const §=K§:int = 3;
      
      public static const §!!"§:int = 5;
      
      public static const §<![§:int = 2;
      
      public static const §7![§:int = 1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §[b§ = 0;
            while(true)
            {
               §&H§ = 6;
               while(true)
               {
                  §<P§ = 7;
                  loop2:
                  while(true)
                  {
                     §6M§ = 8;
                     while(true)
                     {
                        §=K§ = 3;
                        addr85:
                        while(_loc2_)
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §!!"§ = 5;
            §§goto(addr80);
         }
         §§goto(addr39);
      }
      
      public var §>p§:String;
      
      public var §=J§:int;
      
      protected var §6!1§:§!!i§;
      
      public var §4;§:Number;
      
      public var §if §:String;
      
      public var §2R§:Number = 1;
      
      public var § !G§:Number;
      
      private var §5!%§:Boolean = false;
      
      private var §]'§:String;
      
      private var §+W§:int;
      
      private var §4`§:§2k§;
      
      private var §9`§:§9!,§;
      
      private var §+`§:§"B§;
      
      public function §=?§(param1:String, param2:int, param3:§9!,§, param4:§"B§, param5:§2k§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_)
         {
            super();
            while(true)
            {
               this.§>p§ = param1;
               while(true)
               {
                  this.§=J§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§9`§ = param3;
                     addr168:
                     while(true)
                     {
                        this.§]'§ = param12;
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§+W§ = param13;
            §§goto(addr151);
         }
      }
      
      public function get front() : Boolean
      {
         return this.§5!%§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§]'§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§+W§;
      }
      
      public function §@W§() : int
      {
         return this.shape.§'!3§();
      }
      
      public function §&!0§() : int
      {
         return this.shape.§[k§();
      }
      
      public function §]!?§() : int
      {
         return this.shape.§>;§();
      }
      
      public function §!!_§() : Number
      {
         return this.§9`§.getValue(§9!,§.§?!=§);
      }
      
      public function §4!?§() : Number
      {
         return Number(this.§9`§.getValue(§9!,§.§7!$§));
      }
      
      public function §3!B§() : Number
      {
         return Number(this.§9`§.getValue(§9!,§.§;S§));
      }
      
      public function §,!c§() : Number
      {
         return Number(this.§9`§.getValue(§9!,§.§ !0§));
      }
      
      public function §"Q§() : Number
      {
         return Number(this.§9`§.getValue(§9!,§.§&b§));
      }
      
      public function §2!#§() : Number
      {
         return Number(this.§9`§.getValue(§9!,§.§3z§));
      }
      
      public function §#!,§() : Number
      {
         return Number(this.§9`§.getValue(§9!,§.§^y§));
      }
      
      public function §2_§() : int
      {
         return this.§4;§;
      }
      
      public function get material() : §9!,§
      {
         return this.§9`§;
      }
      
      public function get shape() : §2k§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Texture = null;
         if(_loc3_)
         {
            §§push(this.§4`§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  addr27:
                  _loc1_ = §@!Z§.§;!,§.§#U§.§;5§(this.§>p§).getFrame(0).texture;
                  if(_loc3_)
                  {
                     §§push(this);
                     §§push(§§findproperty(§2k§));
                     §§push(this.§>p§);
                     §§push("Rectangle");
                     §§push(_loc1_.width);
                     if(_loc3_ || this)
                     {
                        §§push(§ p§.§]!E§);
                        if(!(_loc2_ && _loc1_))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc3_ || this)
                           {
                              addr81:
                              §§push(§§pop() / 2);
                           }
                           §§push(_loc1_.height);
                           if(_loc3_)
                           {
                              §§push(§§pop() * § p§.§]!E§);
                              if(!_loc2_)
                              {
                                 addr102:
                                 §§push(§§pop() / 2);
                              }
                              §§pop().§4`§ = new §§pop().§2k§(§§pop(),§§pop(),§§pop(),§§pop());
                              addr108:
                              return this.§4`§;
                              addr106:
                           }
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr81);
                  }
               }
               §§goto(addr106);
            }
            §§goto(addr108);
         }
         §§goto(addr27);
      }
      
      public function get §7=§() : §"B§
      {
         return this.§+`§;
      }
      
      public function get score() : int
      {
         return this.§6!1§.getValue();
      }
   }
}
