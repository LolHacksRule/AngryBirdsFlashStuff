package §2G§
{
   import §0!E§.§;!D§;
   import §8!B§.§#! §;
   import §8z§.Texture;
   import §9T§.§1r§;
   
   public class §5!1§
   {
      
      public static const §2!M§:int = 0;
      
      public static const §5J§:int = 6;
      
      public static const §#p§:int = 7;
      
      public static const §0z§:int = 8;
      
      public static const §?m§:int = 3;
      
      public static const §4!,§:int = 5;
      
      public static const §9D§:int = 2;
      
      public static const §[!2§:int = 1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §5!1§)
         {
            §2!M§ = 0;
            §5J§ = 6;
         }
         loop0:
         do
         {
            §#p§ = 7;
            while(true)
            {
               §0z§ = 8;
               §?m§ = 3;
               §4!,§ = 5;
               while(_loc2_ || §5!1§)
               {
                  §9D§ = 2;
                  if(!_loc1_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(§[!2§ = 1, _loc1_);
         
      }
      
      public var §4V§:String;
      
      public var §]^§:int;
      
      protected var §1#§:§;!D§;
      
      public var §8X§:Number;
      
      public var §"9§:String;
      
      public var §'z§:Number = 1;
      
      public var §53§:Number;
      
      private var §^!-§:Boolean = false;
      
      private var §7!H§:String;
      
      private var §8!O§:int;
      
      private var §6H§:§+b§;
      
      private var §+!9§:§,6§;
      
      private var §#!Q§:§0Z§;
      
      public function §5!1§(param1:String, param2:int, param3:§,6§, param4:§0Z§, param5:§+b§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         super();
         this.§4V§ = param1;
         while(true)
         {
            this.§]^§ = param2;
            while(true)
            {
               this.§+!9§ = param3;
               this.§7!H§ = param12;
               if(_loc14_ && param3)
               {
                  break;
               }
               this.§8!O§ = param13;
               loop2:
               while(true)
               {
                  this.§^!-§ = param11;
                  this.§#!Q§ = param4;
                  if(_loc14_)
                  {
                     break;
                  }
                  this.§6H§ = param5;
                  loop3:
                  while(true)
                  {
                     this.§1#§ = new §;!D§(param6);
                     loop4:
                     while(true)
                     {
                        this.§"9§ = param7;
                        loop5:
                        while(true)
                        {
                           this.§'z§ = param8;
                           loop6:
                           while(true)
                           {
                              if(this.§'z§ <= 0)
                              {
                                 this.§'z§ = 1;
                                 continue;
                              }
                              addr38:
                              while(true)
                              {
                                 this.§53§ = param9;
                                 while(true)
                                 {
                                    if(!_loc14_)
                                    {
                                       continue loop4;
                                    }
                                    continue loop6;
                                    addr53:
                                    this.§8X§ = param10;
                                    if(!(_loc14_ && param1))
                                    {
                                       if(!_loc14_)
                                       {
                                          if(!_loc14_)
                                          {
                                             return;
                                          }
                                          continue loop3;
                                       }
                                       continue loop5;
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function get front() : Boolean
      {
         return this.§^!-§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§7!H§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§8!O§;
      }
      
      public function §]!Q§() : int
      {
         return this.shape.§5L§();
      }
      
      public function §@!&§() : int
      {
         return this.shape.§[k§();
      }
      
      public function §7!!§() : int
      {
         return this.shape.§-I§();
      }
      
      public function §9!O§() : Number
      {
         return this.§+!9§.getValue(§,6§.§?!A§);
      }
      
      public function §&'§() : Number
      {
         return Number(this.§+!9§.getValue(§,6§.§ "§));
      }
      
      public function §2!>§() : Number
      {
         return Number(this.§+!9§.getValue(§,6§.§1I§));
      }
      
      public function §4r§() : Number
      {
         return Number(this.§+!9§.getValue(§,6§.§0P§));
      }
      
      public function §'!@§() : Number
      {
         return Number(this.§+!9§.getValue(§,6§.§ !>§));
      }
      
      public function §!F§() : Number
      {
         return Number(this.§+!9§.getValue(§,6§.§']§));
      }
      
      public function §<m§() : Number
      {
         return Number(this.§+!9§.getValue(§,6§.§!!!§));
      }
      
      public function §@i§() : int
      {
         return this.§8X§;
      }
      
      public function get material() : §,6§
      {
         return this.§+!9§;
      }
      
      public function get shape() : §+b§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Texture = null;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§6H§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  _loc1_ = §#! §.§`'§.§<'§.getAnimation(this.§4V§).getFrame(0).texture;
                  addr32:
                  if(_loc3_ || this)
                  {
                     §§push(this);
                     §§push(§§findproperty(§+b§));
                     §§push(this.§4V§);
                     §§push("Rectangle");
                     §§push(_loc1_.width);
                     if(_loc3_)
                     {
                        §§push(§1r§.§[M§);
                        if(_loc3_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc2_ && _loc3_))
                           {
                              addr91:
                              §§push(§§pop() / 2);
                           }
                           §§push(_loc1_.height);
                           if(!_loc2_)
                           {
                              §§goto(addr97);
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr91);
                  }
               }
               §§goto(addr97);
            }
            addr97:
            §§push(§§pop() * §1r§.§[M§);
            if(!_loc2_)
            {
               addr102:
               §§push(§§pop() / 2);
            }
            §§pop().§6H§ = new §§pop().§+b§(§§pop(),§§pop(),§§pop(),§§pop());
            return this.§6H§;
         }
         §§goto(addr32);
      }
      
      public function get §1h§() : §0Z§
      {
         return this.§#!Q§;
      }
      
      public function get score() : int
      {
         return this.§1#§.getValue();
      }
   }
}
