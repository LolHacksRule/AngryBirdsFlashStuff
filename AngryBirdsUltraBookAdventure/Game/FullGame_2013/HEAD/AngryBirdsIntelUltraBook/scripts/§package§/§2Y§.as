package §package§
{
   import §5=§.Integer;
   import §6!J§.Texture;
   import §?!Y§.§`S§;
   import §]!@§.LevelMain;
   
   public class §2Y§
   {
      
      public static const §?Y§:int = 0;
      
      public static const §6!c§:int = 6;
      
      public static const §5!a§:int = 7;
      
      public static const §3F§:int = 8;
      
      public static const §9!0§:int = 3;
      
      public static const §<%§:int = 5;
      
      public static const §?N§:int = 2;
      
      public static const §-Z§:int = 1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §?Y§ = 0;
            loop0:
            while(true)
            {
               §6!c§ = 6;
               loop1:
               while(true)
               {
                  §5!a§ = 7;
                  while(true)
                  {
                     §3F§ = 8;
                     while(!(_loc2_ && _loc1_))
                     {
                        if(_loc1_)
                        {
                           §9!0§ = 3;
                           loop4:
                           while(_loc1_)
                           {
                              §<%§ = 5;
                              while(true)
                              {
                                 §?N§ = 2;
                                 loop6:
                                 while(!_loc2_)
                                 {
                                    if(_loc1_)
                                    {
                                       while(true)
                                       {
                                          §-Z§ = 1;
                                          if(_loc1_ || _loc2_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop6;
                                       }
                                       return;
                                       continue;
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public var § I§:String;
      
      public var §4o§:int;
      
      protected var §<T§:Integer;
      
      public var §0!+§:Number;
      
      public var §[L§:String;
      
      public var §[!4§:Number = 1;
      
      public var §>!"§:Number;
      
      private var §9z§:Boolean = false;
      
      private var §@J§:String;
      
      private var §#c§:int;
      
      private var §&! §:LevelItemShape;
      
      private var §4!!§:LevelItemMaterial;
      
      private var §8!4§:LevelItemSoundResource;
      
      public function §2Y§(param1:String, param2:int, param3:LevelItemMaterial, param4:LevelItemSoundResource, param5:LevelItemShape, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_ || param1)
         {
            super();
            loop0:
            while(true)
            {
               this.§ I§ = param1;
               loop1:
               while(true)
               {
                  this.§4o§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§4!!§ = param3;
                     loop3:
                     while(true)
                     {
                        this.§@J§ = param12;
                        loop4:
                        while(true)
                        {
                           this.§#c§ = param13;
                           loop5:
                           while(true)
                           {
                              this.§9z§ = param11;
                              while(_loc15_)
                              {
                                 loop8:
                                 while(_loc15_ || param3)
                                 {
                                    this.§&! § = param5;
                                    continue loop3;
                                    addr102:
                                    if(!(_loc15_ || param3))
                                    {
                                       continue;
                                    }
                                    if(this.§[!4§ <= 0)
                                    {
                                       if(_loc15_)
                                       {
                                          if(_loc14_)
                                          {
                                             continue loop1;
                                          }
                                          this.§[!4§ = 1;
                                       }
                                       loop13:
                                       while(_loc15_)
                                       {
                                          if(!_loc15_)
                                          {
                                             continue loop2;
                                          }
                                          while(true)
                                          {
                                             if(!(_loc14_ && param2))
                                             {
                                                addr54:
                                                if(_loc15_ || param1)
                                                {
                                                   if(!_loc15_)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                addr95:
                                                while(true)
                                                {
                                                   if(!(_loc14_ && this))
                                                   {
                                                      §§goto(addr102);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         this.§[L§ = param7;
                                                         continue loop4;
                                                      }
                                                      addr128:
                                                   }
                                                   §§goto(addr54);
                                                }
                                                continue loop8;
                                             }
                                             continue loop13;
                                          }
                                          continue loop3;
                                       }
                                       continue loop5;
                                    }
                                    while(true)
                                    {
                                       this.§>!"§ = param9;
                                       §§goto(addr47);
                                    }
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§8!4§ = param4;
            §§goto(addr145);
         }
      }
      
      public function get front() : Boolean
      {
         return this.§9z§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§@J§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§#c§;
      }
      
      public function §5t§() : int
      {
         return this.shape.§1]§();
      }
      
      public function §2V§() : int
      {
         return this.shape.§,?§();
      }
      
      public function §7!B§() : int
      {
         return this.shape.§<!g§();
      }
      
      public function §<^§() : Number
      {
         return this.§4!!§.getValue(LevelItemMaterial.§+v§);
      }
      
      public function §#B§() : Number
      {
         return Number(this.§4!!§.getValue(LevelItemMaterial.§+o§));
      }
      
      public function §2[§() : Number
      {
         return Number(this.§4!!§.getValue(LevelItemMaterial.§"W§));
      }
      
      public function §`! §() : Number
      {
         return Number(this.§4!!§.getValue(LevelItemMaterial.§]!3§));
      }
      
      public function §%_§() : Number
      {
         return Number(this.§4!!§.getValue(LevelItemMaterial.§@L§));
      }
      
      public function §<!<§() : Number
      {
         return Number(this.§4!!§.getValue(LevelItemMaterial.§'!A§));
      }
      
      public function §1G§() : Number
      {
         return Number(this.§4!!§.getValue(LevelItemMaterial.§4^§));
      }
      
      public function §1!7§() : int
      {
         return this.§0!+§;
      }
      
      public function get material() : LevelItemMaterial
      {
         return this.§4!!§;
      }
      
      public function get shape() : LevelItemShape
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Texture = null;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§&! §);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  _loc1_ = §`S§.§[o§.animationManager.getAnimation(this.§ I§).getFrame(0).texture;
                  addr32:
                  if(!_loc3_)
                  {
                     §§push(this);
                     §§push(§§findproperty(LevelItemShape));
                     §§push(this.§ I§);
                     §§push("Rectangle");
                     §§push(_loc1_.width);
                     if(!_loc3_)
                     {
                        §§push(LevelMain.§@!d§);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc2_ || _loc1_)
                           {
                              addr95:
                              §§push(§§pop() / 2);
                              §§push(_loc1_.height);
                              if(_loc2_)
                              {
                                 §§push(§§pop() * LevelMain.§@!d§);
                                 if(_loc2_)
                                 {
                                    addr105:
                                    §§push(§§pop() / 2);
                                 }
                                 §§pop().§&! § = new §§pop().LevelItemShape(§§pop(),§§pop(),§§pop(),§§pop());
                                 addr111:
                                 return this.§&! §;
                                 addr109:
                              }
                           }
                           §§goto(addr95);
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr95);
                  }
               }
               §§goto(addr109);
            }
            §§goto(addr111);
         }
         §§goto(addr32);
      }
      
      public function get §%!K§() : LevelItemSoundResource
      {
         return this.§8!4§;
      }
      
      public function get score() : int
      {
         return this.§<T§.getValue();
      }
   }
}
