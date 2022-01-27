package §6"6§
{
   import §""%§.§#`§;
   import §'#§.§4!!§;
   import §4!x§.§`[§;
   import §4"-§.§<!l§;
   import §;!0§.;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   
   public class §^!E§ extends §<!l§ implements §`[§
   {
       
      
      private var §<!a§:Boolean;
      
      protected var §2!S§:Dictionary;
      
      public function §^!E§(param1:String, param2:§#2§)
      {
         super(param1,param2);
         this.§2!S§ = new Dictionary();
         this.§<!a§ = false;
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(§2!Z§[param1])
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:§#`§ = null;
         if(this.§,n§)
         {
            _loc2_ = param1.split(",");
            for each(_loc3_ in _loc2_)
            {
               §^C§(_loc3_);
            }
            _loc4_ = "tutorialshown";
            (_loc5_ = {}).id = §40§.§1"$§.id;
            _loc5_.tutorials = _loc2_;
            _loc6_ = {
               "type":_loc4_,
               "player":_loc5_
            };
            _loc7_ = new §#`§(_loc6_,§^"=§.§^"3§ + _loc4_,this,§#`§.§-n§);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §"!7§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §5"9§(param1:IOErrorEvent) : void
      {
      }
      
      public function get §,n§() : Boolean
      {
         return this.§<!a§;
      }
      
      public function set §,n§(param1:Boolean) : void
      {
         this.§<!a§ = param1;
      }
      
      public function §"!w§(param1:String) : int
      {
         var _loc2_:§4!!§ = null;
         if(this.§2!S§[param1])
         {
            _loc2_ = this.§2!S§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §8!A§(param1:String, param2:int) : void
      {
         var _loc3_:§4!!§ = new §4!!§(param2);
         this.§2!S§[param1] = _loc3_;
      }
   }
}
