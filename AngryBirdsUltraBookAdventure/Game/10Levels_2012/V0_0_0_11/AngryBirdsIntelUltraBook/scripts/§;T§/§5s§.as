package §;T§
{
   import § D§.§]!B§;
   import §2!H§.LevelMain;
   import §7i§.Texture;
   import §7p§.Integer;
   
   public class §5s§
   {
      
      public static const §#z§:int = 0;
      
      public static const §-"§:int = 6;
      
      public static const §2!I§:int = 7;
      
      public static const §3!h§:int = 8;
      
      public static const §"!W§:int = 3;
      
      public static const §4!T§:int = 5;
      
      public static const §'!W§:int = 2;
      
      public static const §`!J§:int = 1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §#z§ = 0;
            loop0:
            while(true)
            {
               §-"§ = 6;
               while(true)
               {
                  §2!I§ = 7;
                  while(_loc2_ || _loc1_)
                  {
                     if(_loc1_)
                     {
                        continue loop0;
                     }
                     §3!h§ = 8;
                     while(true)
                     {
                        §"!W§ = 3;
                        loop4:
                        while(_loc2_ || _loc1_)
                        {
                           §4!T§ = 5;
                           loop5:
                           while(true)
                           {
                              §'!W§ = 2;
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop5;
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      public var §#>§:String;
      
      public var §17§:int;
      
      protected var §while§:Integer;
      
      public var §9Y§:Number;
      
      public var §-!@§:String;
      
      public var §9§:Number = 1;
      
      public var §]!3§:Number;
      
      private var §]G§:Boolean = false;
      
      private var §!!<§:String;
      
      private var §0!§:int;
      
      private var §"!5§:LevelItemShape;
      
      private var §69§:LevelItemMaterial;
      
      private var §'!i§:LevelItemSoundResource;
      
      public function §5s§(param1:String, param2:int, param3:LevelItemMaterial, param4:LevelItemSoundResource, param5:LevelItemShape, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(!(_loc14_ && param3))
         {
            super();
            loop0:
            while(true)
            {
               this.§#>§ = param1;
               loop1:
               while(true)
               {
                  this.§17§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§69§ = param3;
                     while(true)
                     {
                        this.§!!<§ = param12;
                        addr179:
                        loop8:
                        for(; _loc15_ || param2; loop11:
                        while(_loc15_ || param1)
                        {
                           if(this.§9§ <= 0)
                           {
                              if(_loc15_)
                              {
                                 if(!_loc14_)
                                 {
                                    if(_loc15_)
                                    {
                                       if(!_loc14_)
                                       {
                                          this.§9§ = 1;
                                          §§goto(addr76);
                                       }
                                       else
                                       {
                                          §§goto(addr179);
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          this.§'!i§ = param4;
                                       }
                                       addr152:
                                    }
                                 }
                                 while(!(_loc14_ && this))
                                 {
                                    if(_loc15_)
                                    {
                                       this.§"!5§ = param5;
                                       break loop11;
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                                 addr138:
                              }
                              §§goto(addr76);
                           }
                           §§goto(addr41);
                        })
                        {
                           this.§while§ = new Integer(param6);
                           while(true)
                           {
                              this.§-!@§ = param7;
                              continue loop0;
                              addr52:
                              if(_loc15_ || this)
                              {
                                 this.§9Y§ = param10;
                                 addr59:
                                 if(!(_loc14_ && param3))
                                 {
                                    addr76:
                                    return;
                                    addr76:
                                 }
                                 while(_loc15_ || param1)
                                 {
                                    §§goto(addr52);
                                    §§goto(addr59);
                                 }
                                 loop12:
                                 for(; !_loc14_; §§goto(addr45))
                                 {
                                    if(_loc14_)
                                    {
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       addr41:
                                       while(true)
                                       {
                                          this.§]!3§ = param9;
                                          continue loop12;
                                       }
                                    }
                                 }
                                 addr45:
                                 continue loop8;
                              }
                           }
                        }
                        while(true)
                        {
                           this.§0!§ = param13;
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      public function get front() : Boolean
      {
         return this.§]G§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§!!<§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§0!§;
      }
      
      public function §]b§() : int
      {
         return this.shape.§^c§();
      }
      
      public function §"?§() : int
      {
         return this.shape.§%!?§();
      }
      
      public function §'i§() : int
      {
         return this.shape.§==§();
      }
      
      public function §'_§() : Number
      {
         return this.§69§.getValue(LevelItemMaterial.§<[§);
      }
      
      public function §>t§() : Number
      {
         return Number(this.§69§.getValue(LevelItemMaterial.§&y§));
      }
      
      public function §<!I§() : Number
      {
         return Number(this.§69§.getValue(LevelItemMaterial.§@F§));
      }
      
      public function §+^§() : Number
      {
         return Number(this.§69§.getValue(LevelItemMaterial.§0y§));
      }
      
      public function §!!b§() : Number
      {
         return Number(this.§69§.getValue(LevelItemMaterial.§=O§));
      }
      
      public function §7c§() : Number
      {
         return Number(this.§69§.getValue(LevelItemMaterial.§+a§));
      }
      
      public function §[!S§() : Number
      {
         return Number(this.§69§.getValue(LevelItemMaterial.§,j§));
      }
      
      public function §[f§() : int
      {
         return this.§9Y§;
      }
      
      public function get material() : LevelItemMaterial
      {
         return this.§69§;
      }
      
      public function get shape() : LevelItemShape
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Texture = null;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§"!5§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  addr32:
                  _loc1_ = §]!B§.§>F§.animationManager.getAnimation(this.§#>§).getFrame(0).texture;
                  if(_loc2_)
                  {
                     §§push(this);
                     §§push(§§findproperty(LevelItemShape));
                     §§push(this.§#>§);
                     §§push("Rectangle");
                     §§push(_loc1_.width);
                     if(_loc2_ || this)
                     {
                        §§push(LevelMain.§8N§);
                        if(_loc2_ || this)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc2_ || _loc1_)
                           {
                              addr100:
                              §§push(§§pop() / 2);
                              §§push(_loc1_.height);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() * LevelMain.§8N§);
                                 if(_loc3_ && _loc1_)
                                 {
                                 }
                                 §§goto(addr117);
                              }
                              §§push(§§pop() / 2);
                           }
                           §§goto(addr100);
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr100);
                  }
               }
               §§goto(addr117);
            }
            addr117:
            §§pop().§"!5§ = new §§pop().LevelItemShape(§§pop(),§§pop(),§§pop(),§§pop());
            return this.§"!5§;
         }
         §§goto(addr32);
      }
      
      public function get §,!9§() : LevelItemSoundResource
      {
         return this.§'!i§;
      }
      
      public function get score() : int
      {
         return this.§while§.getValue();
      }
   }
}
