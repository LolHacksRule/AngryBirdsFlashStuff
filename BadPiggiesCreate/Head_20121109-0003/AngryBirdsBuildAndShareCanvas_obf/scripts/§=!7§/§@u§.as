package §=!7§
{
   import §@y§.§>!D§;
   import flash.display.MovieClip;
   
   public class §@u§ extends §>!D§
   {
      
      private static const §8-§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §8-§ = 1000 / 60;
         }
      }
      
      private var §0!6§:String;
      
      private var §5",§:String;
      
      private var §=!@§:int = 0;
      
      private var §]#§:int = 0;
      
      private var §=<§:Number = 0;
      
      private var §>!j§:Boolean = false;
      
      public function §@u§(param1:XML, param2:§6W§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function §"!v§(param1:Number) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(_loc5_)
         {
            §§push(this);
            §§push(this.§=<§);
            if(!(_loc6_ && _loc3_))
            {
               §§push(§§pop() + param1);
            }
            §§pop().§=<§ = §§pop();
            if(_loc5_)
            {
               addr36:
               §§push(this);
               §§push(this.§=<§);
               if(_loc5_)
               {
                  §§push(§§pop() / §8-§);
               }
               §§pop().§]#§ = §§pop();
            }
            loop0:
            while(true)
            {
               if(this.§=!@§ < this.§]#§)
               {
                  var _loc3_:*;
                  §§push((_loc3_ = this).§=!@§);
                  if(!_loc6_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc4_:* = §§pop();
                  if(!(_loc6_ && _loc3_))
                  {
                     _loc3_.§=!@§ = _loc4_;
                  }
                  if(_loc5_)
                  {
                     mClip.gotoAndStop(this.§=!@§);
                     loop6:
                     while(true)
                     {
                        this.§0!6§ = mClip.currentLabel;
                        addr188:
                        while(true)
                        {
                           §§push(this.§0!6§);
                           if(!_loc5_)
                           {
                              break;
                           }
                           if(§§pop() != this.§5",§)
                           {
                              continue;
                           }
                           continue loop0;
                        }
                        addr168:
                        while(true)
                        {
                           §§push(§§pop());
                           addr169:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              loop3:
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    continue loop6;
                                 }
                                 this.§]#§ = this.§=!@§;
                                 loop4:
                                 while(true)
                                 {
                                    this.§=<§ = this.§]#§ * §8-§;
                                    addr133:
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          if(!_loc6_)
                                          {
                                             break loop3;
                                          }
                                          continue loop3;
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
                  else
                  {
                     loop1:
                     while(true)
                     {
                        this.§5",§ = this.§0!6§;
                        if(!(_loc5_ || _loc2_))
                        {
                           continue;
                        }
                        if(_loc5_)
                        {
                           if(_loc5_ || param1)
                           {
                              §§push(_loc2_);
                              if(_loc5_)
                              {
                                 break loop0;
                              }
                              §§goto(addr169);
                           }
                           §§goto(addr133);
                        }
                        else
                        {
                           while(true)
                           {
                              if(!(_loc5_ || _loc3_))
                              {
                                 break loop1;
                              }
                              this.§=!@§ = this.§]#§;
                              continue loop1;
                           }
                           addr114:
                        }
                     }
                  }
                  while(true)
                  {
                     if(_loc5_ || param1)
                     {
                        §§push(this.§0!6§);
                        if(!(_loc6_ && this))
                        {
                           §§goto(addr168);
                        }
                        §§goto(addr169);
                     }
                     §§goto(addr188);
                  }
               }
               §§goto(addr114);
            }
            return §§pop();
         }
         §§goto(addr36);
      }
      
      public function §+!g§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            mClip.gotoAndStop(param1);
         }
      }
      
      public function §1!S§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §%!h§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §3"5§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.gotoAndStop(param1);
         }
         loop0:
         do
         {
            this.§0!6§ = param1;
            loop1:
            while(true)
            {
               this.§5",§ = param1;
               do
               {
                  this.§]#§ = mClip.currentFrame;
                  loop3:
                  do
                  {
                     this.§=!@§ = mClip.currentFrame;
                     while(_loc2_)
                     {
                        this.§=<§ = mClip.currentFrame * §8-§;
                        if(_loc2_)
                        {
                           continue loop3;
                        }
                     }
                     continue loop1;
                  }
                  while(!_loc2_);
                  
               }
               while(!(_loc2_ || _loc2_));
               
               continue loop0;
            }
         }
         while(_loc3_ && _loc3_);
         
      }
      
      public function §3"-§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §4B§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §4C§() : Boolean
      {
         return this.§>!j§;
      }
      
      public function set §4C§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§>!j§ = param1;
         }
      }
   }
}
