package §0S§
{
   import §40§.§5G§;
   import §;!y§.§,!s§;
   import §<-§.§2B§;
   import §?]§.Texture;
   
   public class §4K§
   {
      
      public static const §&!8§:int = 0;
      
      public static const §6r§:int = 6;
      
      public static const §,<§:int = 7;
      
      public static const §5-§:int = 8;
      
      public static const §^!Q§:int = 3;
      
      public static const §8!J§:int = 5;
      
      public static const §!!U§:int = 2;
      
      public static const §9A§:int = 1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §4K§)
         {
            §&!8§ = 0;
            while(true)
            {
               §6r§ = 6;
               loop1:
               while(true)
               {
                  §,<§ = 7;
                  addr111:
                  while(true)
                  {
                     §5-§ = 8;
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      public var §-!>§:String;
      
      public var §-!o§:int;
      
      protected var §`!x§:§2B§;
      
      public var §?!$§:Number;
      
      public var §^w§:String;
      
      public var §'!§:Number = 1;
      
      public var §]!3§:Number;
      
      private var §4!!§:Boolean = false;
      
      private var §?!T§:String;
      
      private var §&!-§:int;
      
      private var §0>§:§6R§;
      
      private var §"7§:§ L§;
      
      private var §5!q§:§6!D§;
      
      public function §4K§(param1:String, param2:int, param3:§ L§, param4:§6!D§, param5:§6R§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_)
         {
            super();
            loop0:
            while(true)
            {
               this.§-!>§ = param1;
               loop1:
               while(true)
               {
                  this.§-!o§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§"7§ = param3;
                     loop3:
                     while(true)
                     {
                        this.§?!T§ = param12;
                        addr145:
                        if(!(_loc15_ || param3))
                        {
                           continue;
                        }
                        if(!_loc15_)
                        {
                           continue loop2;
                        }
                        this.§4!!§ = param11;
                        loop6:
                        while(true)
                        {
                           this.§5!q§ = param4;
                           while(true)
                           {
                              this.§0>§ = param5;
                              loop8:
                              while(true)
                              {
                                 this.§`!x§ = new §2B§(param6);
                                 loop9:
                                 while(true)
                                 {
                                    this.§^w§ = param7;
                                    loop10:
                                    while(!_loc14_)
                                    {
                                       if(_loc15_)
                                       {
                                          this.§'!§ = param8;
                                          continue loop8;
                                       }
                                       continue loop0;
                                       loop15:
                                       while(true)
                                       {
                                          if(!(_loc14_ && param1))
                                          {
                                             continue loop9;
                                          }
                                          continue loop10;
                                          addr69:
                                          this.§?!$§ = param10;
                                          if(!_loc14_)
                                          {
                                             addr30:
                                             if(_loc15_ || this)
                                             {
                                                if(_loc14_)
                                                {
                                                   continue loop1;
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   addr42:
                                                   while(true)
                                                   {
                                                      this.§]!3§ = param9;
                                                      continue loop15;
                                                   }
                                                   §§goto(addr30);
                                                }
                                                addr95:
                                             }
                                             if(!_loc14_)
                                             {
                                                return;
                                             }
                                             continue loop8;
                                          }
                                       }
                                       loop5:
                                       while(true)
                                       {
                                          if(!_loc14_)
                                          {
                                             §§goto(addr145);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                this.§&!-§ = param13;
                                                continue loop5;
                                             }
                                             addr169:
                                          }
                                       }
                                       continue loop3;
                                    }
                                    continue loop6;
                                 }
                              }
                              if(!(_loc15_ || param1))
                              {
                                 continue;
                              }
                              if(!_loc14_)
                              {
                                 §§goto(addr69);
                              }
                              §§goto(addr143);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr169);
      }
      
      public function get front() : Boolean
      {
         return this.§4!!§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§?!T§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§&!-§;
      }
      
      public function §7!X§() : int
      {
         return this.shape.§%!>§();
      }
      
      public function §%!Q§() : int
      {
         return this.shape.§]k§();
      }
      
      public function §]§() : int
      {
         return this.shape.§%"#§();
      }
      
      public function §7"§() : Number
      {
         return this.§"7§.getValue(§ L§.§@q§);
      }
      
      public function §4!a§() : Number
      {
         return Number(this.§"7§.getValue(§ L§.§<"$§));
      }
      
      public function §-l§() : Number
      {
         return Number(this.§"7§.getValue(§ L§.§+>§));
      }
      
      public function §@!`§() : Number
      {
         return Number(this.§"7§.getValue(§ L§.§?L§));
      }
      
      public function §4Z§() : Number
      {
         return Number(this.§"7§.getValue(§ L§.§82§));
      }
      
      public function §]!&§() : Number
      {
         return Number(this.§"7§.getValue(§ L§.§'!x§));
      }
      
      public function §2!H§() : Number
      {
         return Number(this.§"7§.getValue(§ L§.§'n§));
      }
      
      public function §>x§() : int
      {
         return this.§?!$§;
      }
      
      public function get material() : § L§
      {
         return this.§"7§;
      }
      
      public function get shape() : §6R§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Texture = null;
         if(!_loc2_)
         {
            §§push(this.§0>§);
            if(_loc3_ || this)
            {
               if(!§§pop())
               {
                  addr32:
                  _loc1_ = §,!s§.§=!I§.animationManager.getAnimation(this.§-!>§).getFrame(0).texture;
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(this);
                     §§push(§§findproperty(§6R§));
                     §§push(this.§-!>§);
                     §§push("Rectangle");
                     §§push(_loc1_.width);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(§5G§.§6+§);
                        if(_loc3_ || _loc2_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc2_ && _loc3_))
                           {
                              addr103:
                              §§push(§§pop() / 2);
                              §§push(_loc1_.height);
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(§§pop() * §5G§.§6+§);
                                 if(!_loc2_)
                                 {
                                    addr117:
                                    §§push(§§pop() / 2);
                                 }
                                 §§pop().§0>§ = new §§pop().§6R§(§§pop(),§§pop(),§§pop(),§§pop());
                                 addr123:
                                 return this.§0>§;
                                 addr121:
                              }
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr103);
                  }
               }
               §§goto(addr121);
            }
            §§goto(addr123);
         }
         §§goto(addr32);
      }
      
      public function get §9!M§() : §6!D§
      {
         return this.§5!q§;
      }
      
      public function get score() : int
      {
         return this.§`!x§.getValue();
      }
   }
}
