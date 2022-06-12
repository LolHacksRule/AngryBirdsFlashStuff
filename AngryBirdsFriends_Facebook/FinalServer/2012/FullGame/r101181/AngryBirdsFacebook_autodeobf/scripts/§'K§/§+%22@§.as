package §'K§
{
   import §6!B§.§>!E§;
   import §]!A§.;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §+"@§
   {
       
      
      private var §=!a§:MovieClip;
      
      private var §8"-§:Array;
      
      public function §+"@§(param1:MovieClip)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super();
            do
            {
               this.§=!a§ = param1;
            }
            while(_loc2_);
            
         }
      }
      
      public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §#6§.§ q§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            do
            {
               this.§8"-§ = [];
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      public function deActivate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:MovieClip = null;
         if(!(_loc5_ && _loc1_))
         {
            §#6§.§ q§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         for each(_loc1_ in this.§8"-§)
         {
            if(!(_loc5_ && this))
            {
               if(!this.§=!a§)
               {
                  continue;
               }
               if(!(_loc5_ && _loc1_))
               {
                  if(_loc1_.parent != this.§=!a§)
                  {
                     continue;
                  }
                  if(!_loc4_)
                  {
                     continue;
                  }
               }
            }
            this.§=!a§.removeChild(_loc1_);
         }
         if(!_loc5_)
         {
            this.§8"-§ = [];
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:MovieClip = null;
         var _loc2_:* = int(this.§8"-§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§8"-§[_loc2_];
            if(_loc4_ || _loc3_)
            {
               if(_loc3_.currentFrame == _loc3_.totalFrames)
               {
                  loop1:
                  while(true)
                  {
                     this.§8"-§.splice(_loc2_,1);
                     loop2:
                     while(true)
                     {
                        addr73:
                        while(true)
                        {
                           if(this.§=!a§)
                           {
                              if(_loc4_)
                              {
                                 if(_loc3_.parent == this.§=!a§)
                                 {
                                    if(_loc4_)
                                    {
                                       addr86:
                                       while(true)
                                       {
                                          this.§=!a§.removeChild(_loc3_);
                                       }
                                       addr86:
                                    }
                                    loop4:
                                    while(_loc4_ || param1)
                                    {
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(_loc4_)
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          _loc2_ = §§pop();
                                          if(!(_loc5_ && this))
                                          {
                                             continue loop1;
                                          }
                                          continue loop4;
                                       }
                                       continue loop0;
                                    }
                                    continue loop2;
                                 }
                              }
                              §§goto(addr86);
                           }
                        }
                     }
                  }
               }
               §§goto(addr41);
            }
            §§goto(addr86);
         }
         if(!_loc5_)
         {
            if(Math.random() > 0.97)
            {
               if(!_loc5_)
               {
                  this.§#!N§();
               }
            }
         }
      }
      
      public function §#!N§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:* = 0;
         if(_loc5_)
         {
            §§push(int(Math.floor(Math.random() * 4)));
            if(!_loc6_)
            {
               _loc1_ = §§pop();
               addr38:
               if(!_loc6_)
               {
                  §§push(int(Math.min(_loc1_,3)));
               }
               §§push("FireWorks");
               if(_loc5_ || _loc2_)
               {
                  §§push(§§pop() + (_loc1_ + 1));
               }
               var _loc2_:String = §§pop();
               var _loc3_:Class = §8B§.§6"C§(_loc2_);
               var _loc4_:MovieClip;
               (_loc4_ = new _loc3_()).x = Math.random() * this.§=!a§.width;
               if(!(_loc6_ && this))
               {
                  _loc4_.y = Math.random() * this.§=!a§.height;
                  while(true)
                  {
                     §§push(§>!E§);
                     §§push("Sound_Fireworks_Blast");
                     if(!(_loc6_ && this))
                     {
                        §§push(§§pop() + (_loc1_ + 1));
                     }
                     §§pop().§7N§(§§pop());
                     while(!(_loc6_ && _loc2_))
                     {
                        this.§=!a§.addChild(_loc4_);
                        loop2:
                        while(_loc5_ || this)
                        {
                           while(true)
                           {
                              _loc4_.gotoAndPlay(1);
                              do
                              {
                                 this.§8"-§.push(_loc4_);
                              }
                              while(_loc6_ && _loc1_);
                              
                              if(_loc5_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           return;
                        }
                     }
                  }
               }
               §§goto(addr123);
            }
            _loc1_ = §§pop();
         }
         §§goto(addr38);
      }
   }
}
