package §[h§
{
   import §&!F§.§"!d§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Timer;
   
   public class §0!0§ implements §7Z§
   {
      
      public static const §'!c§:String = "StatsLevelCount";
      
      private static const §]![§:Number = 10;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §'!c§ = "StatsLevelCount";
         }
         do
         {
            §]![§ = 10;
         }
         while(_loc1_);
         
      }
      
      private var §-!`§:Timer;
      
      private var §>v§:Array;
      
      public function §0!0§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§>v§ = [];
         }
         while(true)
         {
            super();
            while(!(_loc2_ && _loc1_))
            {
               this.§-!`§ = new Timer(1000,§]![§);
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function §@Y§(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§"!d§ = null;
         var _loc5_:* = param1;
         if(_loc7_ || param1)
         {
            if(§'!c§ === _loc5_)
            {
               addr105:
               §§push(0);
               if(_loc6_ && _loc3_)
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
                  if(!this.§-!`§.running)
                  {
                     if(_loc7_)
                     {
                        _loc2_ = "tracking";
                        _loc3_ = {
                           "type":§'!c§,
                           "value":"start",
                           "count":1
                        };
                        _loc4_ = new §"!d§(_loc3_,§5!9§.§<V§ + _loc2_,this,§"!d§.§9X§);
                        if(!_loc6_)
                        {
                           this.§>v§.push(_loc4_);
                        }
                        loop0:
                        while(true)
                        {
                           loop1:
                           while(true)
                           {
                              this.§-!`§.reset();
                              while(!_loc6_)
                              {
                                 this.§-!`§.start();
                                 if(_loc7_)
                                 {
                                    if(true)
                                    {
                                       break loop1;
                                    }
                                    continue loop1;
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                     break;
                  }
            }
            return;
         }
         §§goto(addr105);
      }
      
      public function §5R§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§"!d§ = null;
         for each(_loc1_ in this.§>v§)
         {
            if(_loc4_)
            {
               _loc1_.dispose();
            }
            _loc1_ = null;
         }
         if(!_loc5_)
         {
            this.§>v§ = [];
         }
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      public function onIOError(param1:IOErrorEvent) : void
      {
      }
   }
}
