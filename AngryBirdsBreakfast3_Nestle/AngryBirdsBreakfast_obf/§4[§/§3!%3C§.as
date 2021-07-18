package §4[§
{
   import §%!B§.§0![§;
   import §%!n§.§%]§;
   import §1![§.§#E§;
   import §4!i§.§@t§;
   import com.angrybirds.utils.§30§;
   import com.angrybirds.utils.LocalDataHandler;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   
   public class §3!<§ extends §%]§ implements §30§
   {
       
      
      private var §1!w§:Boolean;
      
      protected var §-U§:Dictionary;
      
      private var mLocalData:LocalDataHandler;
      
      public function §3!<§(param1:String, param2:§0![§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2);
            while(true)
            {
               this.§-U§ = new Dictionary();
               §§goto(addr71);
            }
         }
         addr71:
         while(true)
         {
            this.§1!w§ = false;
            if(_loc3_)
            {
               if(!(_loc4_ && param2))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §+!6§() : void
      {
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§?a§[param1])
            {
               if(_loc2_)
               {
                  addr34:
                  §§push(true);
                  if(_loc2_ || _loc2_)
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
         §§goto(addr34);
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            if(_loc10_)
            {
               this.setTutorialSeen(_loc3_);
            }
         }
         _loc4_ = "tutorialshown";
         (_loc5_ = {}).id = §2P§.§[!$§.id;
         if(_loc10_ || _loc3_)
         {
            _loc5_.tutorials = _loc2_;
         }
         _loc6_ = {
            "type":_loc4_,
            "player":_loc5_
         };
         if(!_loc9_)
         {
            new §#E§(_loc6_,AngryBirdsCustom.§;"1§ + _loc4_,this,§#E§.§3b§);
         }
      }
      
      override public function setTutorialSeen(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super.setTutorialSeen(param1,param2);
         }
      }
      
      override public function setScoreForLevel(param1:String, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.setScoreForLevel(param1,param2);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §?!§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'![§(param1:IOErrorEvent) : void
      {
      }
      
      public function get §5!z§() : Boolean
      {
         return this.§1!w§;
      }
      
      public function set §5!z§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§1!w§ = param1;
         }
      }
      
      public function §5K§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§@t§ = null;
         if(_loc4_ || _loc3_)
         {
            if(this.§-U§[param1])
            {
               addr42:
               _loc2_ = this.§-U§[param1];
               if(!(_loc3_ && _loc2_))
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr42);
      }
      
      public function §9!k§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§@t§ = new §@t§(param2);
         if(_loc5_ || this)
         {
            this.§-U§[param1] = _loc3_;
         }
      }
   }
}
