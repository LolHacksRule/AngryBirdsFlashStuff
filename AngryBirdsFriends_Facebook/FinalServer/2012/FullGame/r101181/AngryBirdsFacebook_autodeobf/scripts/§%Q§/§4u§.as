package §%Q§
{
   import §0!R§.Texture;
   import §9"!§.§9"3§;
   import §<a§.§9U§;
   import §]!A§.;
   
   public class §4u§
   {
      
      public static const §1!B§:int = 0;
      
      public static const §,"8§:int = 6;
      
      public static const §%!l§:int = 7;
      
      public static const §0!o§:int = 8;
      
      public static const §[!`§:int = 3;
      
      public static const §0!q§:int = 5;
      
      public static const §<!q§:int = 2;
      
      public static const §%"D§:int = 1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §4u§)
         {
            §1!B§ = 0;
            loop0:
            while(true)
            {
               §,"8§ = 6;
               loop1:
               while(true)
               {
                  §%!l§ = 7;
                  while(true)
                  {
                     §0!o§ = 8;
                     loop3:
                     for(; _loc2_; if(_loc1_ && _loc1_)
                     {
                        continue;
                     },§§goto(addr42))
                     {
                        §[!`§ = 3;
                        while(true)
                        {
                           §0!q§ = 5;
                           loop5:
                           while(!(_loc1_ && _loc2_))
                           {
                              while(true)
                              {
                                 §<!q§ = 2;
                                 while(_loc2_ || _loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop1;
                                    §%"D§ = 1;
                                    if(_loc2_)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 continue loop5;
                              }
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr95);
      }
      
      public var §2!>§:String;
      
      public var §7[§:int;
      
      protected var §0!-§:§9U§;
      
      public var §@!l§:Number;
      
      public var §[C§:String;
      
      public var §>-§:Number = 1;
      
      public var §@!h§:Number;
      
      private var §'4§:Boolean = false;
      
      private var § R§:String;
      
      private var §9"B§:int;
      
      private var §&1§:§@d§;
      
      private var §+!u§:§9!n§;
      
      private var §4"C§:§;!y§;
      
      public function §4u§(param1:String, param2:int, param3:§9!n§, param4:§;!y§, param5:§@d§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(!(_loc15_ && this))
         {
            super();
            loop0:
            while(true)
            {
               this.§2!>§ = param1;
               while(true)
               {
                  this.§7[§ = param2;
                  while(!(_loc15_ && this))
                  {
                     this.§+!u§ = param3;
                     loop3:
                     while(true)
                     {
                        this.§ R§ = param12;
                        addr181:
                        while(true)
                        {
                           this.§9"B§ = param13;
                           continue loop3;
                        }
                     }
                     if(!(_loc14_ || param3))
                     {
                        continue;
                     }
                     this.§'4§ = param11;
                     loop6:
                     while(true)
                     {
                        this.§4"C§ = param4;
                        loop7:
                        while(true)
                        {
                           this.§&1§ = param5;
                           while(true)
                           {
                              this.§0!-§ = new §9U§(param6);
                              continue loop6;
                              addr99:
                              loop12:
                              while(!(_loc15_ && param3))
                              {
                                 loop13:
                                 while(true)
                                 {
                                    this.§@!h§ = param9;
                                    loop14:
                                    while(!_loc15_)
                                    {
                                       continue loop0;
                                       while(true)
                                       {
                                          this.§@!l§ = param10;
                                          if(_loc14_ || param1)
                                          {
                                             if(!_loc15_)
                                             {
                                                if(_loc14_)
                                                {
                                                   addr43:
                                                   if(_loc14_ || param1)
                                                   {
                                                      break;
                                                   }
                                                   continue loop6;
                                                }
                                                loop11:
                                                while(true)
                                                {
                                                   if(this.§>-§ > 0)
                                                   {
                                                      continue loop13;
                                                   }
                                                   if(!_loc14_)
                                                   {
                                                      continue loop12;
                                                   }
                                                   addr72:
                                                   if(_loc14_ || param1)
                                                   {
                                                      continue loop7;
                                                   }
                                                   addr116:
                                                   while(_loc14_)
                                                   {
                                                      this.§>-§ = param8;
                                                      continue loop11;
                                                      §§goto(addr72);
                                                   }
                                                   §§goto(addr152);
                                                }
                                                continue loop7;
                                             }
                                             continue loop12;
                                          }
                                          continue loop14;
                                       }
                                       return;
                                    }
                                    §§goto(addr181);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      public function get front() : Boolean
      {
         return this.§'4§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§ R§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§9"B§;
      }
      
      public function § !B§() : int
      {
         return this.shape.§4"1§();
      }
      
      public function §-!S§() : int
      {
         return this.shape.§<j§();
      }
      
      public function §]!0§() : int
      {
         return this.shape.§`G§();
      }
      
      public function §5A§() : Number
      {
         return this.§+!u§.getValue(§9!n§.§4!,§);
      }
      
      public function §^"9§() : Number
      {
         return Number(this.§+!u§.getValue(§9!n§.§+t§));
      }
      
      public function §3!l§() : Number
      {
         return Number(this.§+!u§.getValue(§9!n§.§3!g§));
      }
      
      public function §2"1§() : Number
      {
         return Number(this.§+!u§.getValue(§9!n§.§ &§));
      }
      
      public function §+r§() : Number
      {
         return Number(this.§+!u§.getValue(§9!n§.§#!_§));
      }
      
      public function §;!H§() : Number
      {
         return Number(this.§+!u§.getValue(§9!n§.§5"-§));
      }
      
      public function §[",§() : Number
      {
         return Number(this.§+!u§.getValue(§9!n§.§^!L§));
      }
      
      public function §!!k§() : int
      {
         return this.§@!l§;
      }
      
      public function get material() : §9!n§
      {
         return this.§+!u§;
      }
      
      public function get shape() : §@d§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Texture = null;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§&1§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  _loc1_ = §#6§.§6!z§.animationManager.getAnimation(this.§2!>§).getFrame(0).texture;
                  addr32:
                  if(_loc3_)
                  {
                     §§push(this);
                     §§push(§§findproperty(§@d§));
                     §§push(this.§2!>§);
                     §§push("Rectangle");
                     §§push(_loc1_.width);
                     if(_loc3_ || _loc1_)
                     {
                        §§push(§9"3§.§'"F§);
                        if(!(_loc2_ && _loc1_))
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc2_)
                           {
                              addr93:
                              §§push(§§pop() / 2);
                              §§push(_loc1_.height);
                              if(!_loc2_)
                              {
                                 §§push(§§pop() * §9"3§.§'"F§);
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    addr107:
                                    §§push(§§pop() / 2);
                                 }
                                 §§pop().§&1§ = new §§pop().§@d§(§§pop(),§§pop(),§§pop(),§§pop());
                                 addr113:
                                 return this.§&1§;
                                 addr111:
                              }
                           }
                           §§goto(addr93);
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr93);
                  }
               }
               §§goto(addr111);
            }
            §§goto(addr113);
         }
         §§goto(addr32);
      }
      
      public function get §2+§() : §;!y§
      {
         return this.§4"C§;
      }
      
      public function get score() : int
      {
         return this.§0!-§.getValue();
      }
   }
}
