package §7!Q§
{
   import §,s§.§'!=§;
   import §>!<§.§-E§;
   import §`!@§.§[!X§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   
   public class §;_§ extends §'!=§ implements §[!X§
   {
       
      
      protected var §[§:Dictionary;
      
      private var §2N§:int = 0;
      
      private var §4![§:Boolean;
      
      public function §;_§(param1:String)
      {
         super(param1);
         this.§[§ = new Dictionary();
         this.§4![§ = false;
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(§6!5§[param1])
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:§-E§ = null;
         if(§ 4§.§?H§.§4!A§)
         {
            _loc2_ = param1.split(",");
            _loc3_ = "tutorialshown";
            (_loc4_ = {}).id = §[!5§.§7!h§.email;
            _loc4_.tutorials = _loc2_;
            _loc5_ = {
               "type":_loc3_,
               "player":_loc4_
            };
            _loc6_ = new §-E§(_loc5_,§ 4§.§=R§ + _loc3_,this,§-E§.§]!,§);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §1k§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §&M§(param1:IOErrorEvent) : void
      {
      }
      
      public function get overallScore() : int
      {
         return this.§2N§;
      }
      
      public function set overallScore(param1:int) : void
      {
         this.§2N§ = param1;
      }
      
      public function get §4!A§() : Boolean
      {
         return this.§4![§;
      }
      
      public function set §4!A§(param1:Boolean) : void
      {
         this.§4![§ = param1;
      }
   }
}
