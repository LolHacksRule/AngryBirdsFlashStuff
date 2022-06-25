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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §%!>§ = 0;
            loop0:
            while(true)
            {
               §]!=§ = 6;
               loop1:
               while(true)
               {
                  §+!]§ = 7;
                  loop2:
                  for(; _loc1_; if(_loc2_ && _loc2_)
                  {
                     continue;
                  },§4x§ = 2,§§goto(addr39))
                  {
                     §;!r§ = 8;
                     while(true)
                     {
                        §=!%§ = 3;
                        addr41:
                        if(!(_loc2_ && _loc2_))
                        {
                           if(_loc1_)
                           {
                              §<I§ = 1;
                              addr60:
                              if(!(_loc2_ && §9B§))
                              {
                                 return;
                                 addr39:
                              }
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       if(_loc1_ || §9B§)
                                       {
                                          continue loop2;
                                       }
                                       addr94:
                                       while(true)
                                       {
                                          §#!s§ = 5;
                                          continue loop5;
                                       }
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr41);
                                 §§goto(addr60);
                              }
                              continue;
                           }
                           continue loop1;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr94);
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
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(!(_loc14_ && param2))
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§<!]§ = param1;
            while(true)
            {
               this.§6K§ = param2;
               continue loop0;
               loop7:
               for(; !(_loc14_ && param2); if(_loc14_ && param1)
               {
                  continue;
               },if(this.§"g§ <= 0)
               {
                  §§goto(addr76);
               },§§goto(addr48))
               {
                  this.§6r§ = param5;
                  loop8:
                  while(true)
                  {
                     this.§#!%§ = new §&'§(param6);
                     loop9:
                     while(true)
                     {
                        this.§@§ = param7;
                        loop10:
                        while(true)
                        {
                           if(!(_loc14_ && param1))
                           {
                              if(_loc14_)
                              {
                                 break;
                              }
                              this.§"g§ = param8;
                              continue;
                           }
                           addr187:
                           while(true)
                           {
                              this.§4!c§ = param12;
                              while(true)
                              {
                                 this.§!!?§ = param13;
                                 addr177:
                                 while(true)
                                 {
                                    this.§"n§ = param11;
                                    addr162:
                                    while(true)
                                    {
                                       this.§]4§ = param4;
                                       continue loop7;
                                    }
                                 }
                                 addr40:
                                 if(!(_loc14_ && this))
                                 {
                                    return;
                                 }
                              }
                              continue loop10;
                           }
                        }
                        continue loop0;
                        while(true)
                        {
                           if(!(_loc14_ && param1))
                           {
                              continue loop8;
                           }
                           continue loop9;
                        }
                        §§goto(addr162);
                     }
                  }
               }
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Texture = null;
         if(_loc2_ || this)
         {
            §§push(this.§6r§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  addr31:
                  _loc1_ = § _§.§!6§.animationManager.getAnimation(this.§<!]§).getFrame(0).texture;
                  if(_loc2_ || _loc2_)
                  {
                     §§push(this);
                     §§push(§§findproperty(§2!W§));
                     §§push(this.§<!]§);
                     §§push("Rectangle");
                     §§push(_loc1_.width);
                     if(_loc2_ || this)
                     {
                        §§push(§^g§.§^!S§);
                        if(_loc2_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc3_ && _loc2_))
                           {
                              addr97:
                              §§push(§§pop() / 2);
                              §§push(_loc1_.height);
                              if(!(_loc3_ && this))
                              {
                                 §§push(§§pop() * §^g§.§^!S§);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop() / 2);
                                 }
                              }
                           }
                           §§goto(addr97);
                        }
                        §§pop().§6r§ = new §§pop().§2!W§(§§pop(),§§pop(),§§pop(),§§pop());
                        addr117:
                        return this.§6r§;
                        addr115:
                     }
                     §§goto(addr97);
                  }
               }
               §§goto(addr115);
            }
            §§goto(addr117);
         }
         §§goto(addr31);
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
