package §7!0§
{
   import §!?§.§'k§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Timer;
   
   public class §%!P§ implements §-!^§
   {
      
      public static const §-6§:String = "StatsLevelCount";
      
      private static const §7!g§:Number = 10;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §-6§ = "StatsLevelCount";
         }
         do
         {
            §7!g§ = 10;
         }
         while(_loc2_);
         
      }
      
      private var §@"1§:Timer;
      
      private var §9!A§:Array;
      
      public function §%!P§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§9!A§ = [];
         }
         do
         {
            super();
            do
            {
               this.§@"1§ = new Timer(1000,§7!g§);
            }
            while(_loc2_ && _loc1_);
            
         }
         while(!_loc1_);
         
      }
      
      public function §^!U§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§'k§ = null;
         var _loc5_:* = param1;
         if(!(_loc7_ && this))
         {
            if(§-6§ === _loc5_)
            {
               addr114:
               §§push(0);
               if(_loc7_)
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
                  if(!this.§@"1§.running)
                  {
                     if(!_loc7_)
                     {
                        _loc2_ = "tracking";
                        _loc3_ = {
                           "type":§-6§,
                           "value":"start",
                           "count":1
                        };
                        _loc4_ = new §'k§(_loc3_,§`Y§.§6T§ + _loc2_,this,§'k§.§;!^§);
                        if(!_loc7_)
                        {
                           this.§9!A§.push(_loc4_);
                           loop0:
                           while(true)
                           {
                              addr82:
                              while(true)
                              {
                                 this.§@"1§.reset();
                                 continue loop0;
                              }
                           }
                        }
                        while(true)
                        {
                           this.§@"1§.start();
                           if(_loc6_ || _loc3_)
                           {
                              if(true)
                              {
                                 break;
                              }
                              §§goto(addr82);
                           }
                           §§goto(addr86);
                        }
                     }
                     break;
                  }
            }
            return;
         }
         §§goto(addr114);
      }
      
      public function §9L§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§'k§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§9!A§)
         {
            if(!(_loc5_ && _loc2_))
            {
               _loc1_.dispose();
            }
            _loc1_ = null;
         }
         if(_loc4_ || _loc1_)
         {
            this.§9!A§ = [];
         }
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §9o§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §[G§(param1:IOErrorEvent) : void
      {
      }
   }
}
