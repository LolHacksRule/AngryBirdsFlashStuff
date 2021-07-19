package §%i§
{
   import §1!t§.§!!G§;
   import flash.display.MovieClip;
   
   public class §^n§ extends §!!G§
   {
      
      private static const § "-§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            § "-§ = 1000 / 60;
         }
      }
      
      private var §^"V§:String;
      
      private var §]X§:String;
      
      private var §,!L§:int = 0;
      
      private var §#s§:int = 0;
      
      private var §%t§:Number = 0;
      
      private var §-"C§:Boolean = false;
      
      public function §^n§(param1:XML, param2:§0!Y§, param3:MovieClip = null)
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
         if(_loc3_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function §=;§(param1:Number) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(_loc5_)
         {
            §§push(this);
            §§push(this.§%t§);
            if(!_loc6_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§%t§ = §§pop();
            if(_loc5_)
            {
               addr31:
               §§push(this);
               §§push(this.§%t§);
               if(_loc5_)
               {
                  §§push(§§pop() / § "-§);
               }
               §§pop().§#s§ = §§pop();
            }
            loop0:
            while(true)
            {
               if(this.§,!L§ < this.§#s§)
               {
                  var _loc3_:*;
                  §§push((_loc3_ = this).§,!L§);
                  if(!_loc6_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc4_:* = §§pop();
                  if(_loc5_)
                  {
                     _loc3_.§,!L§ = _loc4_;
                  }
                  if(_loc5_ || _loc2_)
                  {
                     mClip.gotoAndStop(this.§,!L§);
                     while(true)
                     {
                        this.§^"V§ = mClip.currentLabel;
                        loop6:
                        while(true)
                        {
                           §§push(this.§^"V§);
                           if(_loc5_)
                           {
                              addr166:
                              if(§§pop() != this.§]X§)
                              {
                                 while(true)
                                 {
                                    §§push(this.§^"V§);
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       §§push(§§pop());
                                    }
                                    §§goto(addr166);
                                 }
                                 addr169:
                              }
                              continue loop0;
                           }
                           addr179:
                           loop3:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              addr180:
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    continue loop6;
                                 }
                                 this.§#s§ = this.§,!L§;
                                 continue loop3;
                              }
                           }
                           §§goto(addr166);
                        }
                     }
                     addr193:
                  }
                  else
                  {
                     loop1:
                     while(true)
                     {
                        this.§]X§ = this.§^"V§;
                        if(_loc5_ || _loc2_)
                        {
                           if(!(_loc6_ && _loc3_))
                           {
                              if(!_loc6_)
                              {
                                 §§push(_loc2_);
                                 if(_loc5_)
                                 {
                                    break loop0;
                                 }
                                 §§goto(addr179);
                              }
                              addr137:
                              continue loop0;
                           }
                           addr109:
                           while(!_loc6_)
                           {
                              this.§,!L§ = this.§#s§;
                              while(true)
                              {
                                 if(!(_loc5_ || this))
                                 {
                                    break loop1;
                                 }
                                 continue loop1;
                              }
                           }
                           §§goto(addr169);
                        }
                        §§goto(addr115);
                     }
                  }
                  while(true)
                  {
                     if(_loc5_ || _loc3_)
                     {
                        this.§%t§ = this.§#s§ * § "-§;
                        §§goto(addr137);
                     }
                     else
                     {
                        §§goto(addr193);
                     }
                  }
               }
               §§goto(addr109);
            }
            return §§pop();
         }
         §§goto(addr31);
      }
      
      public function §%"C§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            mClip.gotoAndStop(param1);
         }
      }
      
      public function §<"2§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §&8§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §!!a§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mClip.gotoAndStop(param1);
            loop0:
            while(true)
            {
               this.§^"V§ = param1;
               loop1:
               while(true)
               {
                  this.§]X§ = param1;
                  do
                  {
                     this.§#s§ = mClip.currentFrame;
                     loop3:
                     do
                     {
                        this.§,!L§ = mClip.currentFrame;
                        while(_loc2_)
                        {
                           continue loop0;
                           this.§%t§ = mClip.currentFrame * § "-§;
                           if(_loc2_)
                           {
                              continue loop3;
                           }
                        }
                        continue loop1;
                     }
                     while(_loc3_ && this);
                     
                  }
                  while(!_loc2_);
                  
               }
            }
         }
      }
      
      public function §[!z§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §=!5§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §6",§() : Boolean
      {
         return this.§-"C§;
      }
      
      public function set §6",§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§-"C§ = param1;
         }
      }
   }
}
