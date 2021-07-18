package §0![§
{
   import §'!A§.§-!S§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5"-§.§5y§;
   import com.rovio.assets.§>!]§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §+"3§ extends §5y§
   {
      
      public static const §'=§:String = "FlashGoes11State";
      
      public static const § !p§:Number = 6000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §'=§ = "FlashGoes11State";
            do
            {
               § !p§ = 6000;
            }
            while(!_loc1_);
            
         }
      }
      
      private var §1!z§:Number = -1;
      
      private var §<!1§:MovieClip = null;
      
      public function §+"3§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
         }
         do
         {
            §?E§ = new §'s§(this);
            do
            {
               §?E§.init(§`7§.§>"?§.Views.View_FlashGoes11[0]);
            }
            while(!_loc1_);
            
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc1_))
         {
            super.activate();
         }
         var _loc1_:Class = §>!]§.§1!8§("MovieClip_Animation");
         if(!(_loc3_ && this))
         {
            this.§<!1§ = new _loc1_();
            if(_loc4_)
            {
               §?E§.addChild(this.§<!1§);
               if(!(_loc3_ && _loc2_))
               {
                  addr65:
                  this.§<!1§.scaleX = this.§<!1§.scaleY = 1.3;
                  if(!_loc3_)
                  {
                     this.§<!1§.x = (1024 - 1024 * 1.3) / 2;
                     while(true)
                     {
                        this.§<!1§.y = (768 - 768 * 1.3) / 2;
                        while(_loc4_)
                        {
                           this.§1!z§ = getTimer();
                           if(!_loc3_)
                           {
                              return;
                              addr90:
                           }
                        }
                     }
                     addr78:
                     addr125:
                  }
                  §§goto(addr90);
               }
               §§goto(addr78);
            }
            §§goto(addr65);
         }
         §§goto(addr125);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && this))
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() != §5y§.STATE_STATUS_RUNNING)
               {
                  if(!(_loc3_ && this))
                  {
                     §§goto(addr107);
                  }
                  else
                  {
                     while(true)
                     {
                        addr59:
                        if(_loc3_ && this)
                        {
                           continue;
                        }
                        §§goto(addr66);
                     }
                     addr108:
                  }
               }
               while(true)
               {
                  if(this.§<!1§.currentFrame == this.§<!1§.totalFrames)
                  {
                     while(true)
                     {
                        mNextState = §]x§.§'=§;
                        addr82:
                        while(true)
                        {
                        }
                     }
                     addr78:
                  }
                  for(; mNextState.length > 0; §§goto(addr82))
                  {
                     if(_loc3_)
                     {
                        break;
                     }
                     if(!_loc4_)
                     {
                        continue;
                     }
                     if(_loc4_)
                     {
                        §§goto(addr59);
                     }
                     else
                     {
                        §§goto(addr78);
                     }
                  }
                  return §5y§.STATE_STATUS_RUNNING;
                  §§goto(addr108);
               }
               addr66:
               return §5y§.STATE_STATUS_COMPLETED;
            }
            §§goto(addr107);
         }
         addr107:
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_ || param2)
         {
            if("CLOSE_FEED" === _loc4_)
            {
               addr54:
               §§push(0);
               if(_loc5_ || param1)
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
                  mNextState = StatePlay.§'=§;
                  if(_loc5_ || param2)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr54);
      }
   }
}
