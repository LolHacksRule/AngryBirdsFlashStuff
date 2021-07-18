package §]0§
{
   import § ^§.§`!2§;
   import flash.net.SharedObject;
   
   public class §=!_§
   {
       
      
      private var §,!w§:String = "";
      
      private var §&"$§:Object;
      
      public function §=!_§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§,!w§ = param1;
               while(_loc3_ || this)
               {
                  this.§8",§();
                  if(_loc2_ && param1)
                  {
                     continue;
                  }
                  return;
                  addr44:
               }
            }
         }
         §§goto(addr44);
      }
      
      private function clear() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var mySO:SharedObject = null;
         try
         {
            §§push(§§newactivation());
            if(_loc3_)
            {
               §§pop().§§slot[1] = SharedObject.getLocal(this.§,!w§);
               if(_loc3_)
               {
                  addr70:
                  mySO.clear();
                  addr69:
               }
               return;
            }
         }
         catch(e:*)
         {
            §§goto(addr69);
         }
         §§goto(addr70);
      }
      
      public function load() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = null;
         var _loc3_:* = this.§&"$§.tutorials;
         for(_loc1_ in _loc3_)
         {
            if(_loc4_ || _loc3_)
            {
               (§6!!§.singleton as §4!=§).§?!b§.setTutorialSeen(_loc1_);
            }
         }
         if(!(_loc5_ && _loc3_))
         {
            if(this.§&"$§.levelProfile)
            {
               if(!(_loc5_ && this))
               {
                  §`!2§.levelProfile = this.§&"$§.levelProfile;
               }
               while(true)
               {
                  §§goto(addr97);
               }
               addr154:
            }
            else
            {
               this.§+U§();
            }
            while(true)
            {
               if(!(_loc5_ && _loc3_))
               {
                  §§goto(addr127);
               }
               else
               {
                  §§goto(addr154);
               }
               return;
            }
         }
         §§goto(addr110);
      }
      
      private function §8",§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§,!w§);
            if(!_loc4_)
            {
               this.§&"$§ = mySO.data;
               if(!(_loc4_ && _loc3_))
               {
                  addr75:
                  if(!this.§&"$§.tutorials)
                  {
                     if(!(_loc4_ && _loc1_))
                     {
                        this.§&"$§.tutorials = [];
                        if(!_loc4_)
                        {
                           §§goto(addr92);
                        }
                     }
                     §§goto(addr113);
                  }
                  addr45:
               }
               addr92:
               if(!this.§&"$§.levelProfile)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     addr113:
                     this.§+U§();
                  }
               }
               return;
            }
            §§goto(addr45);
         }
         catch(e:Error)
         {
            if(!_loc4_)
            {
               §&"$§ = new Object();
            }
         }
         §§goto(addr75);
      }
      
      private function §+U§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:Object = new Object();
         if(_loc3_ || this)
         {
            _loc1_.bestScore = 0;
         }
         loop0:
         while(true)
         {
            _loc1_.levelId = "1-1";
            while(true)
            {
               loop2:
               while(true)
               {
                  _loc1_.score = 0;
                  while(!_loc4_)
                  {
                     _loc1_.stars = 0;
                     if(!(_loc3_ || _loc3_))
                     {
                        continue;
                     }
                     if(!_loc3_)
                     {
                        break loop2;
                     }
                     if(false)
                     {
                        continue loop2;
                     }
                     var _loc2_:Array = [];
                     if(!_loc4_)
                     {
                        _loc2_[0] = _loc1_;
                        §`!2§.levelProfile = _loc2_;
                        this.§&"$§.levelProfile = _loc2_;
                        addr103:
                        addr132:
                        if(!(_loc4_ && _loc1_))
                        {
                           if(_loc3_)
                           {
                              this.§&"$§.selectedLanguage = null;
                              addr95:
                              if(!_loc4_)
                              {
                                 this.§%w§();
                                 if(_loc4_ && this)
                                 {
                                    §§goto(addr95);
                                 }
                                 return;
                                 addr97:
                              }
                              §§goto(addr103);
                           }
                           §§goto(addr132);
                        }
                        addr127:
                        §§goto(addr127);
                     }
                     §§goto(addr97);
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function setScoreForLevel(param1:String, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Array = §`!2§.levelProfile;
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         while(true)
         {
            if(_loc5_ >= _loc3_.length)
            {
               if(!(_loc7_ && _loc3_))
               {
                  if(!(_loc7_ && this))
                  {
                     if(_loc6_)
                     {
                        this.§&"$§.levelProfile = _loc3_;
                        do
                        {
                           this.§%w§();
                        }
                        while(!_loc6_);
                        
                        if(_loc6_ || this)
                        {
                           if(_loc6_ || _loc3_)
                           {
                              break;
                           }
                           while(true)
                           {
                              addr85:
                              while(true)
                              {
                                 _loc5_++;
                              }
                           }
                           addr106:
                        }
                        while(_loc7_)
                        {
                           while(!_loc7_)
                           {
                              _loc3_[_loc5_].stars = (§6!!§.singleton as §4!=§).§?!b§.§9"+§(param1,_loc3_[_loc5_].bestScore);
                              §§goto(addr106);
                           }
                           while(true)
                           {
                           }
                        }
                        continue;
                        addr84:
                     }
                     else
                     {
                        addr124:
                        if(param2 > _loc3_[_loc5_].bestScore)
                        {
                           addr140:
                           _loc3_[_loc5_].bestScore = param2;
                           §§goto(addr145);
                        }
                     }
                     while(true)
                     {
                        _loc3_[_loc5_].score = param2;
                        §§goto(addr113);
                        §§goto(addr145);
                     }
                  }
                  §§goto(addr140);
               }
               §§goto(addr84);
            }
            else if(_loc3_[_loc5_].levelId == param1)
            {
               §§goto(addr124);
            }
            §§goto(addr85);
         }
      }
      
      public function setTutorialSeen(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§&"$§.tutorials[param1] = param2;
         }
         do
         {
            this.§%w§();
         }
         while(_loc4_);
         
      }
      
      public function §<=§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&"$§.soundsEnabled = param1;
            do
            {
               this.§%w§();
            }
            while(_loc2_);
            
         }
      }
      
      public function §[o§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&"$§.selectedLanguage = param1;
            do
            {
               this.§%w§();
            }
            while(!(_loc3_ || _loc2_));
            
         }
      }
      
      public function §'!]§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(Boolean(this.§&"$§));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(§§pop())
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        return this.§&"$§.selectedLanguage;
                     }
                     if(!_loc2_)
                     {
                        break;
                     }
                     addr85:
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(this.§&"$§.selectedLanguage));
                        if(_loc1_)
                        {
                           continue loop0;
                        }
                        addr84:
                        while(true)
                        {
                           §§pop();
                           continue loop3;
                        }
                     }
                  }
                  return "";
                  addr53:
               }
               §§goto(addr84);
            }
         }
         §§goto(addr85);
      }
      
      private function §%w§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc4_)
         {
            §§push(null);
            if(_loc5_ || _loc1_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!(_loc4_ && _loc1_))
               {
                  addr43:
                  var i:String = null;
               }
               try
               {
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     §§pop().§§slot[1] = SharedObject.getLocal(this.§,!w§);
                     if(!_loc4_)
                     {
                        var _loc2_:int = 0;
                        if(_loc5_)
                        {
                           var _loc3_:* = this.§&"$§;
                           if(!_loc4_)
                           {
                              loop0:
                              while(§§hasnext(_loc3_,_loc2_))
                              {
                                 §§push(§§newactivation());
                                 if(_loc5_)
                                 {
                                    §§pop().§§slot[2] = §§nextname(_loc2_,_loc3_);
                                    if(_loc4_)
                                    {
                                       continue;
                                    }
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                    }
                                 }
                                 while(true)
                                 {
                                    §§pop().§§slot[1].data[i] = this.§&"$§[i];
                                    continue loop0;
                                 }
                              }
                              §§goto(addr102);
                           }
                           §§goto(addr88);
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr106);
               }
               catch(e:Error)
               {
               }
               addr102:
               if(_loc5_)
               {
                  addr106:
                  mySO.flush();
                  addr105:
               }
               return;
            }
         }
         §§goto(addr43);
      }
   }
}
