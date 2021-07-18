package §?7§
{
   import §!J§.§[&§;
   import §&! §.§3!§;
   import §2!-§.Texture;
   import §9N§.§9!%§;
   
   public class §,!§
   {
      
      public static const §&J§:int = 0;
      
      public static const §?T§:int = 6;
      
      public static const §"!V§:int = 7;
      
      public static const §"A§:int = 8;
      
      public static const §&!Q§:int = 3;
      
      public static const §@!%§:int = 5;
      
      public static const §!?§:int = 2;
      
      public static const §^!J§:int = 1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §&J§ = 0;
            loop0:
            while(true)
            {
               §?T§ = 6;
               while(true)
               {
                  §"!V§ = 7;
                  while(true)
                  {
                     §"A§ = 8;
                     addr89:
                     while(_loc1_)
                     {
                     }
                     addr77:
                     continue loop0;
                     loop5:
                     while(_loc1_ || _loc1_)
                     {
                        §@!%§ = 5;
                        while(true)
                        {
                           if(_loc1_ || §,!§)
                           {
                              if(!_loc1_)
                              {
                                 break;
                              }
                              §!?§ = 2;
                              continue;
                           }
                           continue loop5;
                        }
                        §§goto(addr89);
                     }
                  }
                  if(_loc2_ && _loc1_)
                  {
                     continue;
                  }
                  §§goto(addr58);
               }
            }
         }
         while(true)
         {
            §&!Q§ = 3;
            §§goto(addr77);
         }
      }
      
      public var § h§:String;
      
      public var §5x§:int;
      
      protected var §finally§:§3!§;
      
      public var §3t§:Number;
      
      public var §=z§:String;
      
      public var §]p§:Number = 1;
      
      public var §,>§:Number;
      
      private var §8!X§:Boolean = false;
      
      private var §>!B§:§!S§;
      
      private var §7I§:§#!+§;
      
      private var §;!H§:§=!5§;
      
      public function §,!§(param1:String, param2:int, param3:§#!+§, param4:§=!5§, param5:§!S§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!(_loc13_ && param1))
         {
            super();
            while(true)
            {
               this.§ h§ = param1;
               while(true)
               {
                  this.§5x§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§7I§ = param3;
                     loop3:
                     while(true)
                     {
                        this.§8!X§ = param11;
                        loop4:
                        while(true)
                        {
                           this.§;!H§ = param4;
                           while(true)
                           {
                              this.§>!B§ = param5;
                              while(_loc12_ || param2)
                              {
                                 this.§finally§ = new §3!§(param6);
                                 continue loop2;
                                 while(_loc12_ || param2)
                                 {
                                    if(this.§]p§ <= 0)
                                    {
                                       loop10:
                                       while(_loc12_)
                                       {
                                          this.§]p§ = 1;
                                          while(true)
                                          {
                                             if(!(_loc12_ || param1))
                                             {
                                                while(_loc12_)
                                                {
                                                   this.§]p§ = param8;
                                                   break loop10;
                                                }
                                                continue loop3;
                                                addr97:
                                             }
                                             if(_loc13_)
                                             {
                                                break;
                                             }
                                             addr34:
                                             if(_loc12_ || this)
                                             {
                                                if(!_loc13_)
                                                {
                                                   return;
                                                   addr43:
                                                }
                                                continue loop4;
                                             }
                                          }
                                          continue loop2;
                                       }
                                       continue;
                                       addr56:
                                    }
                                    while(true)
                                    {
                                       this.§,>§ = param9;
                                       while(true)
                                       {
                                          if(_loc12_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr56);
                                       }
                                       §§goto(addr61);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      public function get front() : Boolean
      {
         return this.§8!X§;
      }
      
      public function §?!P§() : int
      {
         return this.shape.§^6§();
      }
      
      public function §8!H§() : int
      {
         return this.shape.§7!A§();
      }
      
      public function §^!Q§() : int
      {
         return this.shape.§]$§();
      }
      
      public function §>E§() : Number
      {
         return this.§7I§.getValue(§#!+§.§]!?§);
      }
      
      public function § s§() : Number
      {
         return Number(this.§7I§.getValue(§#!+§.§"!Q§));
      }
      
      public function §%f§() : Number
      {
         return Number(this.§7I§.getValue(§#!+§.§?!X§));
      }
      
      public function §45§() : Number
      {
         return Number(this.§7I§.getValue(§#!+§.§^!C§));
      }
      
      public function §#=§() : Number
      {
         return Number(this.§7I§.getValue(§#!+§.§4!V§));
      }
      
      public function §0G§() : Number
      {
         return Number(this.§7I§.getValue(§#!+§.§7x§));
      }
      
      public function §^!;§() : Number
      {
         return Number(this.§7I§.getValue(§#!+§.§[!V§));
      }
      
      public function §%b§() : int
      {
         return this.§3t§;
      }
      
      public function get material() : §#!+§
      {
         return this.§7I§;
      }
      
      public function get shape() : §!S§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Texture = null;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§>!B§);
            if(!(_loc2_ && this))
            {
               if(!§§pop())
               {
                  addr37:
                  _loc1_ = §[&§.§&!'§.§"B§.§2!'§(this.§ h§).getFrame(0).texture;
                  if(_loc3_ || _loc2_)
                  {
                     §§push(this);
                     §§push(§§findproperty(§!S§));
                     §§push(this.§ h§);
                     §§push("Rectangle");
                     §§push(_loc1_.width);
                     if(_loc3_)
                     {
                        §§push(§9!%§.§catch§);
                        if(_loc3_ || _loc2_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc3_)
                           {
                              addr88:
                              §§push(§§pop() / 2);
                              §§push(_loc1_.height);
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§push(§§pop() * §9!%§.§catch§);
                                 if(_loc2_ && _loc2_)
                                 {
                                 }
                                 §§goto(addr119);
                              }
                              §§push(§§pop() / 2);
                           }
                           §§goto(addr88);
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr88);
                  }
               }
               §§goto(addr119);
            }
            addr119:
            §§pop().§>!B§ = new §§pop().§!S§(§§pop(),§§pop(),§§pop(),§§pop());
            return this.§>!B§;
         }
         §§goto(addr37);
      }
      
      public function get §2#§() : §=!5§
      {
         return this.§;!H§;
      }
      
      public function get score() : int
      {
         return this.§finally§.getValue();
      }
   }
}
