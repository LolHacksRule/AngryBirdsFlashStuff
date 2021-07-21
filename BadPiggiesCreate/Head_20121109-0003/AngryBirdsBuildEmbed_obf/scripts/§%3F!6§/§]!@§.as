package §?!6§
{
   import §0!-§.Texture;
   import §8!Q§.§2!7§;
   import §<!<§.§7E§;
   import §?!-§.§'!V§;
   
   public class §]!@§
   {
      
      public static const §!!3§:int = 0;
      
      public static const §`<§:int = 6;
      
      public static const §>K§:int = 7;
      
      public static const §6!<§:int = 8;
      
      public static const §&l§:int = 3;
      
      public static const §]4§:int = 5;
      
      public static const §6!r§:int = 2;
      
      public static const §0>§:int = 1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §]!@§))
         {
            §>K§ = 7;
            §6!<§ = 8;
            §&l§ = 3;
            §]4§ = 5;
            if(!_loc1_)
            {
               §6!r§ = 2;
               addr67:
               §0>§ = 1;
            }
            return;
         }
         §§goto(addr67);
      }
      
      public var §>p§:String;
      
      public var §&!j§:int;
      
      protected var §1y§:§2!7§;
      
      public var §<v§:Number;
      
      public var §+D§:String;
      
      public var §]!H§:Number = 1;
      
      public var §1!s§:Number;
      
      private var §>r§:Boolean = false;
      
      private var §71§:§"!0§;
      
      private var §+s§:§`4§;
      
      private var §<$§:§@T§;
      
      public function §]!@§(param1:String, param2:int, param3:§`4§, param4:§@T§, param5:§"!0§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         super();
         if(!_loc13_)
         {
            this.§>p§ = param1;
            if(_loc12_ || this)
            {
               this.§&!j§ = param2;
            }
            this.§+s§ = param3;
         }
         this.§>r§ = param11;
         if(!(_loc13_ && param1))
         {
            this.§<$§ = param4;
            this.§71§ = param5;
            if(_loc12_ || this)
            {
               this.§1y§ = new §2!7§(param6);
               if(_loc12_ || param3)
               {
                  addr91:
                  this.§+D§ = param7;
               }
               this.§]!H§ = param8;
               if(this.§]!H§ <= 0)
               {
                  this.§]!H§ = 1;
                  if(!_loc13_)
                  {
                     addr106:
                     this.§1!s§ = param9;
                     this.§<v§ = param10;
                  }
                  return;
               }
            }
            §§goto(addr106);
         }
         §§goto(addr91);
      }
      
      public function get front() : Boolean
      {
         return this.§>r§;
      }
      
      public function §36§() : int
      {
         return this.shape.§?p§();
      }
      
      public function §`!C§() : int
      {
         return this.shape.§&<§();
      }
      
      public function §@!H§() : int
      {
         return this.shape.§=$§();
      }
      
      public function §?W§() : Number
      {
         return this.§+s§.getValue(§`4§.§,E§);
      }
      
      public function §2<§() : Number
      {
         return Number(this.§+s§.getValue(§`4§.§+9§));
      }
      
      public function §'!0§() : Number
      {
         return Number(this.§+s§.getValue(§`4§.§^!Q§));
      }
      
      public function §?!l§() : Number
      {
         return Number(this.§+s§.getValue(§`4§.§]u§));
      }
      
      public function §4!'§() : Number
      {
         return Number(this.§+s§.getValue(§`4§.§'!-§));
      }
      
      public function § U§() : Number
      {
         return Number(this.§+s§.getValue(§`4§.§0T§));
      }
      
      public function §2!A§() : Number
      {
         return Number(this.§+s§.getValue(§`4§.§,O§));
      }
      
      public function §2]§() : int
      {
         return this.§<v§;
      }
      
      public function get material() : §`4§
      {
         return this.§+s§;
      }
      
      public function get shape() : §"!0§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Texture = null;
         if(!_loc2_)
         {
            §§push(this.§71§);
            if(_loc3_)
            {
               if(!§§pop())
               {
                  addr27:
                  _loc1_ = §'!V§.§1!2§.§@!o§.§`!!§(this.§>p§).getFrame(0).texture;
                  if(_loc3_)
                  {
                     §§push(this);
                     §§push(§§findproperty(§"!0§));
                     §§push(this.§>p§);
                     §§push("Rectangle");
                     §§push(_loc1_.width);
                     if(_loc3_)
                     {
                        §§push(§7E§.§8!'§);
                        if(!(_loc2_ && _loc3_))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc3_ || _loc2_)
                           {
                              addr86:
                              §§push(§§pop() / 2);
                           }
                           §§push(_loc1_.height);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(§§pop() * §7E§.§8!'§);
                              if(_loc3_)
                              {
                                 §§push(§§pop() / 2);
                              }
                           }
                        }
                        §§pop().§71§ = new §§pop().§"!0§(§§pop(),§§pop(),§§pop(),§§pop());
                        addr108:
                        return this.§71§;
                        addr106:
                     }
                     §§goto(addr86);
                  }
               }
               §§goto(addr106);
            }
            §§goto(addr108);
         }
         §§goto(addr27);
      }
      
      public function get §1!B§() : §@T§
      {
         return this.§<$§;
      }
      
      public function get score() : int
      {
         return this.§1y§.getValue();
      }
   }
}
