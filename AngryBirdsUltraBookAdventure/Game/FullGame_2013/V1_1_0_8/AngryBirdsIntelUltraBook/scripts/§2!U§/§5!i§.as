package §2!U§
{
   import §8!H§.§9![§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import com.rovio.assets.§,!j§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §5!i§ extends §9![§
   {
      
      public static const §'!q§:String = "FlashGoes11State";
      
      public static const §;!<§:Number = 6000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §'!q§ = "FlashGoes11State";
            do
            {
               §;!<§ = 6000;
            }
            while(_loc2_);
            
         }
      }
      
      private var §>!R§:Number = -1;
      
      private var §0"$§:MovieClip = null;
      
      public function §5!i§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.init();
         }
         while(true)
         {
            §'!Q§ = new §&!G§(this);
            while(!(_loc2_ && this))
            {
               §'!Q§.init(§2!z§.§ _§.Views.View_FlashGoes11[0]);
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super.activate();
         }
         var _loc1_:Class = §,!j§.§!!N§("MovieClip_Animation");
         if(!(_loc3_ && _loc1_))
         {
            this.§0"$§ = new _loc1_();
            if(!(_loc3_ && _loc3_))
            {
               §'!Q§.addChild(this.§0"$§);
               if(!(_loc3_ && _loc1_))
               {
                  addr70:
                  this.§0"$§.scaleX = this.§0"$§.scaleY = 1.3;
                  if(!_loc3_)
                  {
                     this.§0"$§.x = (1024 - 1024 * 1.3) / 2;
                     do
                     {
                        this.§0"$§.y = (768 - 768 * 1.3) / 2;
                        do
                        {
                           this.§>!R§ = getTimer();
                        }
                        while(!(_loc4_ || _loc2_));
                        
                     }
                     while(_loc3_);
                     
                     return;
                     addr83:
                  }
                  §§goto(addr124);
               }
               §§goto(addr83);
            }
         }
         §§goto(addr70);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(!(_loc4_ && param1))
            {
               if(§§pop() == §9![§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     if(this.§0"$§.currentFrame == this.§0"$§.totalFrames)
                     {
                        while(true)
                        {
                           mNextState = §&i§.§'!q§;
                           addr93:
                           while(true)
                           {
                           }
                        }
                        addr89:
                     }
                     while(mNextState.length > 0)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           return §9![§.STATE_STATUS_COMPLETED;
                        }
                        if(!_loc4_)
                        {
                           if(_loc3_)
                           {
                              if(!(_loc4_ && this))
                              {
                                 if(!_loc4_)
                                 {
                                    addr80:
                                    break;
                                 }
                                 addr105:
                                 return _loc2_;
                              }
                              continue loop0;
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr93);
                     }
                     return §9![§.STATE_STATUS_RUNNING;
                  }
               }
            }
            §§goto(addr105);
         }
         §§goto(addr80);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_ || param3)
         {
            if("CLOSE_FEED" === _loc4_)
            {
               addr60:
               §§push(0);
               if(!_loc6_)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  mNextState = StatePlay.§'!q§;
                  if(_loc6_)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr60);
      }
   }
}
