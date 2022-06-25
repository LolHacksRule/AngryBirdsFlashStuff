package §2!U§
{
   import §8!H§.§9![§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   
   public class §;o§ extends §9![§
   {
      
      public static const §'!q§:String = "FeedState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §;o§)
         {
            §'!q§ = "FeedState";
         }
      }
      
      private var §9!d§:Boolean = false;
      
      public function §;o§(param1:Boolean = false, param2:String = "FeedState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.init();
            while(true)
            {
               §'!Q§ = new §&!G§(this);
               loop1:
               while(!(_loc2_ && _loc2_))
               {
                  while(true)
                  {
                     §'!Q§.init(§2!z§.§ _§.Views.View_Feed[0]);
                     if(!(_loc2_ && this))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr78);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
            if(_loc2_ || _loc1_)
            {
               if(§&i§.§%!S§ != null)
               {
               }
            }
         }
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
         if(_loc4_ || _loc3_)
         {
            §§push(_loc2_);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop() != §9![§.STATE_STATUS_RUNNING)
               {
                  if(_loc4_)
                  {
                     §§goto(addr90);
                  }
                  else
                  {
                     while(true)
                     {
                     }
                     addr91:
                  }
               }
               while(mNextState.length > 0)
               {
                  if(_loc4_ || this)
                  {
                     §§goto(addr70);
                  }
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§goto(addr91);
               }
               return §9![§.STATE_STATUS_RUNNING;
            }
            addr90:
            return _loc2_;
         }
         addr70:
         return §9![§.STATE_STATUS_COMPLETED;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§9!d§ = false;
            do
            {
               super.deActivate();
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            if("CLOSE_FEED" === _loc4_)
            {
               addr59:
               §§push(0);
               if(_loc6_ && param3)
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
                  if(_loc5_ || param1)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr59);
      }
   }
}
