package §7!B§
{
   import § !Y§.§]!,§;
   import § I§.§]"6§;
   import §!?§.§'k§;
   import §7!0§.§-!^§;
   import §`!j§.§9"!§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   
   public class §@!w§ extends §]"6§ implements §-!^§
   {
       
      
      private var §@!r§:Boolean;
      
      protected var §"D§:Dictionary;
      
      public function §@!w§(param1:String, param2:§9"!§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            super(param1,param2);
         }
         do
         {
            this.§"D§ = new Dictionary();
            do
            {
               this.§@!r§ = false;
            }
            while(!_loc3_);
            
         }
         while(_loc4_);
         
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§&!-§[param1])
            {
               if(!(_loc3_ && this))
               {
                  addr49:
                  §§push(true);
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr53:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr53);
         }
         §§goto(addr49);
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:§'k§ = null;
         if(!_loc11_)
         {
            if(this.§?m§)
            {
               addr39:
               _loc2_ = param1.split(",");
               for each(_loc3_ in _loc2_)
               {
                  if(_loc10_)
                  {
                     §8R§(_loc3_);
                  }
               }
               _loc4_ = "tutorialshown";
               (_loc5_ = {}).id = §@!^§.§2j§.id;
               if(!(_loc11_ && _loc3_))
               {
                  _loc5_.tutorials = _loc2_;
               }
               _loc6_ = {
                  "type":_loc4_,
                  "player":_loc5_
               };
               _loc7_ = new §'k§(_loc6_,§`Y§.§6T§ + _loc4_,this,§'k§.§;!^§);
            }
            return;
         }
         §§goto(addr39);
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
      
      public function get §?m§() : Boolean
      {
         return this.§@!r§;
      }
      
      public function set §?m§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§@!r§ = param1;
         }
      }
      
      public function § !o§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§]!,§ = null;
         if(_loc4_)
         {
            if(this.§"D§[param1])
            {
               addr37:
               _loc2_ = this.§"D§[param1];
               if(_loc4_ || this)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr37);
      }
      
      public function §4!e§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§]!,§ = new §]!,§(param2);
         if(_loc5_)
         {
            this.§"D§[param1] = _loc3_;
         }
      }
   }
}
