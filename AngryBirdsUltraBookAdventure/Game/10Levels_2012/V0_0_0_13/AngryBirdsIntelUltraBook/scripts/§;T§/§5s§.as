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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §5s§))
         {
            §#z§ = 0;
            while(true)
            {
               §-"§ = 6;
               addr63:
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               §`!J§ = 1;
               addr70:
               if(!_loc2_)
               {
                  addr34:
                  if(_loc2_ && _loc1_)
                  {
                     while(!(_loc2_ && §5s§))
                     {
                        §4!T§ = 5;
                        while(true)
                        {
                           §'!W§ = 2;
                           addr46:
                           while(_loc1_ || §5s§)
                           {
                              §§goto(addr63);
                              §§goto(addr70);
                           }
                        }
                        §§goto(addr34);
                     }
                     while(!(_loc2_ && §5s§))
                     {
                        §"!W§ = 3;
                        §§goto(addr80);
                     }
                     addr80:
                     while(!(_loc2_ && _loc1_))
                     {
                        §3!h§ = 8;
                        §§goto(addr102);
                     }
                     addr102:
                     while(true)
                     {
                        §2!I§ = 7;
                        §§goto(addr114);
                     }
                     addr114:
                     addr126:
                  }
                  return;
               }
               §§goto(addr46);
            }
         }
         §§goto(addr126);
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
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_)
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
                        addr183:
                        while(true)
                        {
                           this.§0!§ = param13;
                           continue loop2;
                        }
                        loop11:
                        for(; !(_loc15_ && param3); while(true)
                        {
                           if(!(_loc14_ || this))
                           {
                              continue loop11;
                           }
                           §§goto(addr35);
                        })
                        {
                           if(this.§9§ > 0)
                           {
                              loop13:
                              while(true)
                              {
                                 this.§]!3§ = param9;
                                 while(_loc14_)
                                 {
                                    if(!_loc15_)
                                    {
                                       addr43:
                                       if(_loc15_ && this)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             if(!(_loc15_ && param3))
                                             {
                                                if(!_loc14_)
                                                {
                                                   break;
                                                }
                                                this.§-!@§ = param7;
                                             }
                                             else
                                             {
                                                while(!(_loc15_ && this))
                                                {
                                                   this.§while§ = new Integer(param6);
                                                   continue loop9;
                                                }
                                                while(!(_loc15_ && param2))
                                                {
                                                   this.§"!5§ = param5;
                                                   §§goto(addr132);
                                                }
                                                addr132:
                                                while(true)
                                                {
                                                   this.§'!i§ = param4;
                                                   §§goto(addr144);
                                                }
                                                addr144:
                                                addr156:
                                             }
                                          }
                                          continue loop2;
                                       }
                                       if(!_loc15_)
                                       {
                                          this.§9Y§ = param10;
                                          if(_loc14_ || param2)
                                          {
                                             return;
                                          }
                                          continue;
                                       }
                                       §§goto(addr183);
                                    }
                                    else
                                    {
                                       addr58:
                                       while(true)
                                       {
                                          if(_loc14_ || param2)
                                          {
                                             continue loop0;
                                          }
                                       }
                                       continue loop0;
                                       addr58:
                                    }
                                    while(true)
                                    {
                                       if(!_loc15_)
                                       {
                                          this.§9§ = param8;
                                          break loop13;
                                       }
                                       break;
                                       §§goto(addr58);
                                    }
                                    continue loop1;
                                 }
                                 continue loop11;
                              }
                              continue;
                              addr35:
                           }
                           §§goto(addr58);
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§9§ = 1;
            §§goto(addr75);
         }
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
         if(_loc2_ || _loc1_)
         {
            §§push(this.§"!5§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  addr32:
                  _loc1_ = §]!B§.§>F§.animationManager.getAnimation(this.§#>§).getFrame(0).texture;
                  if(_loc2_ || this)
                  {
                     §§push(this);
                     §§push(§§findproperty(LevelItemShape));
                     §§push(this.§#>§);
                     §§push("Rectangle");
                     §§push(_loc1_.width);
                     if(!_loc3_)
                     {
                        §§push(LevelMain.§8N§);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc3_ && this))
                           {
                              addr100:
                              §§push(§§pop() / 2);
                              §§push(_loc1_.height);
                              if(_loc2_ || this)
                              {
                                 §§push(§§pop() * LevelMain.§8N§);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    §§push(§§pop() / 2);
                                 }
                              }
                           }
                           §§goto(addr100);
                        }
                        §§pop().§"!5§ = new §§pop().LevelItemShape(§§pop(),§§pop(),§§pop(),§§pop());
                        addr126:
                        return this.§"!5§;
                        addr124:
                     }
                     §§goto(addr100);
                  }
               }
               §§goto(addr124);
            }
            §§goto(addr126);
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
