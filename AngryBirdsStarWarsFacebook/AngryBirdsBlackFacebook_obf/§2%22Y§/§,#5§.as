package §2"Y§
{
   import §!!U§.DisplayObject;
   import §5t§.Log;
   import §="2§.§?!r§;
   import §^#>§.§#_§;
   import com.angrybirds.§,!q§;
   import flash.utils.Dictionary;
   
   public class §,#5§
   {
       
      
      protected var §&!2§:XML;
      
      protected var §2`§:XML;
      
      protected var §%"u§:Dictionary;
      
      protected var §-#J§:§]#]§;
      
      protected var §;u§:§5!6§;
      
      protected var §,"<§:§5!h§;
      
      public function §,#5§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§%"u§ = new Dictionary();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.initMaterialManager();
                  loop2:
                  while(_loc1_ || _loc1_)
                  {
                     this.§%#Y§();
                     loop3:
                     while(!_loc2_)
                     {
                        while(true)
                        {
                           this.§5"e§();
                           if(_loc1_)
                           {
                              if(_loc2_ && this)
                              {
                                 continue loop2;
                              }
                              §§goto(addr45);
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      protected function initMaterialManager() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§-#J§ = new §]#]§();
         }
      }
      
      protected function §%#Y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§;u§ = new §5!6§();
         }
      }
      
      protected function §5"e§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§,"<§ = new §5!h§();
         }
      }
      
      public function loadItems(param1:XML) : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:Number = NaN;
         var _loc9_:String = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Boolean = false;
         var _loc13_:String = null;
         var _loc14_:int = 0;
         if(_loc18_)
         {
            this.§&!2§ = param1;
         }
         loop0:
         while(true)
         {
            this.§-#J§.§9#?§(this.§&!2§.Item_Materials,this.§&!2§.Material_Damage_Multipliers,this.§&!2§.Material_Velocity_Multipliers);
            loop1:
            while(true)
            {
               this.§,"<§.§7!f§(this.§&!2§.Item_Resources_Sounds);
               loop2:
               while(true)
               {
                  addr71:
                  loop3:
                  while(true)
                  {
                     this.§;u§.§^!u§(this.§&!2§.Item_Shapes);
                     while(!_loc17_)
                     {
                        this.§%"u§ = new Dictionary();
                        if(_loc18_)
                        {
                           if(!_loc18_)
                           {
                              break loop3;
                           }
                           continue loop0;
                        }
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §%!D§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Boolean, param11:String = "", param12:int = 1) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc14_:DisplayObject = null;
         if(_loc16_ || param2)
         {
            var _loc13_:§?#^§;
            if(!(_loc13_ = !!param5 ? this.§;u§.§3",§(param5) : null))
            {
               if(_loc16_)
               {
                  _loc14_ = §,!q§.§9!,§.animationManager.getAnimation(param1).getFrame(0);
                  §§push(§§findproperty(§<"+§));
                  §§push(_loc14_.width);
                  if(_loc16_ || param1)
                  {
                     §§push(§#_§.§8]§);
                     if(!_loc15_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc16_)
                        {
                           addr79:
                           §§push(§§pop() / 2);
                        }
                        §§push(_loc14_.height);
                        if(_loc16_)
                        {
                           §§push(§§pop() * §#_§.§8]§);
                           if(_loc16_)
                           {
                              §§push(§§pop() / 2);
                           }
                        }
                     }
                     _loc13_ = new §§pop().§<"+§(§§pop(),§§pop(),param1);
                     if(_loc16_)
                     {
                        _loc14_.dispose();
                        this.§%"u§[param1.toLowerCase()] = new §"t§(param1,param2,this.§-#J§.getMaterial(param3),this.§,"<§.§<"E§(param4),_loc13_,param6,param7,param8,param9,param10,param11,param12);
                        addr135:
                        return;
                        addr100:
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr79);
               }
            }
            §§goto(addr135);
         }
         §§goto(addr29);
      }
      
      public function getItem(param1:String) : §"t§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§"t§ = this.§%"u§[param1.toLowerCase()];
         if(_loc3_)
         {
            if(_loc2_ == null)
            {
            }
         }
         return _loc2_;
      }
      
      public function §3",§(param1:String) : §?#^§
      {
         return this.§;u§.§3",§(param1);
      }
      
      public function §1"y§(param1:String) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§"t§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§%"u§)
         {
            if(_loc6_ || param1)
            {
               if(_loc3_.category.toUpperCase() != param1.toUpperCase())
               {
                  continue;
               }
               if(_loc7_ && _loc2_)
               {
                  continue;
               }
            }
            _loc2_[_loc2_.length] = _loc3_.itemName;
         }
         return _loc2_;
      }
      
      public function §%M§() : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         §§push(_loc2_);
         if(!(_loc5_ && _loc1_))
         {
            §§push(§§pop() * _loc1_.length);
         }
         var _loc3_:int = §§pop() as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public function §<#F§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:int = 0;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc6_ || param1)
            {
               if(_loc2_.attribute("name").length() <= 0)
               {
                  addr138:
                  while(true)
                  {
                     Log.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
                     addr141:
                     while(true)
                     {
                     }
                  }
                  addr138:
               }
               loop3:
               while(true)
               {
                  if(_loc2_.attribute("maxSound").length() <= 0)
                  {
                     loop4:
                     while(true)
                     {
                        Log.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
                        addr121:
                        while(true)
                        {
                        }
                        loop8:
                        while(true)
                        {
                           if(_loc5_ && this)
                           {
                              continue loop4;
                           }
                           if(_loc5_ && _loc3_)
                           {
                              continue loop3;
                           }
                           while(true)
                           {
                              continue loop8;
                           }
                        }
                        §§goto(addr121);
                     }
                  }
                  §§goto(addr78);
               }
            }
            §§goto(addr107);
         }
      }
      
      public function §"#0§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§"t§ = this.getItem(param1);
         if(!_loc3_)
         {
            if(_loc2_)
            {
               if(_loc4_ || _loc2_)
               {
                  addr53:
                  §§push(_loc2_.isMaterialStatic);
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr58:
                  return true;
               }
               return §§pop();
            }
            §§goto(addr58);
         }
         §§goto(addr53);
      }
      
      public function initAnimations() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc6_)
         {
            §§push(null);
            if(_loc5_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc5_)
               {
                  addr32:
                  var animationDefinitions:Array = null;
               }
               var _loc2_:int = 0;
               var _loc3_:* = this.§%"u§;
               while(§§hasnext(_loc3_,_loc2_))
               {
                  §§push(§§newactivation());
                  if(!_loc6_)
                  {
                     §§pop().§§slot[1] = §§nextvalue(_loc2_,_loc3_);
                     if(!_loc6_)
                     {
                        try
                        {
                           addr63:
                           animationDefinitions = levelItem.getAnimationDefinitions();
                           if(!(_loc6_ && _loc2_))
                           {
                              §,!q§.§9!,§.animationManager.§;#L§(levelItem.itemName,animationDefinitions);
                           }
                        }
                        catch(e:Error)
                        {
                           continue;
                        }
                     }
                     continue;
                  }
                  §§goto(addr63);
               }
               return;
            }
         }
         §§goto(addr32);
      }
      
      public function §@#0§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         var _loc1_:Array = [];
         for(_loc2_ in this.§%"u§)
         {
            if(_loc5_)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
   }
}
