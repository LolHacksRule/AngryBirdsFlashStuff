package §<[§
{
   import §#!`§.§4!#§;
   import §-!F§.§[!Q§;
   import §=X§.§3j§;
   import com.angrybirds.utils.§2O§;
   import com.angrybirds.utils.§finally§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §%0§ extends EventDispatcher implements §finally§
   {
      
      public static const §3%§:Number = 30 * 60 * 1000;
       
      
      private var §#!O§:String;
      
      private var §"!"§:Boolean;
      
      private var §4m§:Boolean = true;
      
      private var §0"'§:Array;
      
      private var §4!8§:int = -1;
      
      private var §-"%§:int = 1;
      
      private var §8E§:Number = 0;
      
      public function §%0§(param1:String, param2:Boolean)
      {
         super();
         this.§#!O§ = param1;
         this.§0"'§ = [];
         this.§"!"§ = param2;
         var _loc3_:int = 0;
         while(_loc3_ < 50)
         {
            this.§0"'§.push({
               "nickName":"",
               "score":"",
               "isPlayer":"false"
            });
            _loc3_++;
         }
      }
      
      public function §`§() : void
      {
         this.§8E§ = 0;
         this.§4m§ = true;
      }
      
      public function §3!e§(param1:Boolean = false) : Boolean
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:§4!#§ = null;
         var _loc6_:String = null;
         if(!this.§4m§)
         {
            return false;
         }
         var _loc2_:Date = new Date();
         if(param1 || _loc2_.time - this.§8E§ > §3%§)
         {
            this.§8E§ = _loc2_.time;
            if(this.§"!"§)
            {
               _loc6_ = §[!Q§.§=J§.§%w§();
            }
            _loc4_ = "highscore";
            if(§3j§.§0!i§)
            {
               if(_loc6_)
               {
                  _loc3_ = {
                     "levelId":this.§#!O§,
                     "playerId":§3j§.§0!i§.id,
                     "type":_loc6_
                  };
               }
               else
               {
                  _loc3_ = {
                     "levelId":this.§#!O§,
                     "playerId":§3j§.§0!i§.id
                  };
               }
            }
            else if(_loc6_)
            {
               _loc3_ = {
                  "levelId":this.§#!O§,
                  "type":_loc6_
               };
            }
            else
            {
               _loc3_ = {"levelId":this.§#!O§};
            }
            _loc5_ = new §4!#§(_loc3_,AngryBirdsCustom.§91§ + _loc4_,this,§4!#§.§;0§);
            this.§4m§ = false;
            return true;
         }
         return false;
      }
      
      public function §+'§() : void
      {
         ++this.§-"%§;
         if(this.§-"%§ > HighscoreSidebar.§<A§)
         {
            this.§-"%§ = 1;
         }
      }
      
      public function §5o§() : void
      {
         --this.§-"%§;
         if(this.§-"%§ < 1)
         {
            this.§-"%§ = HighscoreSidebar.§<A§;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §2O§.§>!r§((param1.currentTarget as URLLoader).data);
         if(_loc2_.highScore is Array)
         {
            this.§0"'§ = _loc2_.highScore as Array;
         }
         this.§4m§ = true;
         dispatchEvent(new §"!5§(§"!5§.§,!s§));
      }
      
      public function §+!R§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §4!E§(param1:IOErrorEvent) : void
      {
         this.§4m§ = true;
      }
      
      public function get ready() : Boolean
      {
         return this.§4m§;
      }
      
      public function get §!v§() : Array
      {
         return this.§0"'§;
      }
      
      public function get levelId() : String
      {
         return this.§#!O§;
      }
      
      public function get §=!J§() : int
      {
         return this.§-"%§;
      }
      
      public function get §#y§() : int
      {
         return this.§4!8§;
      }
      
      public function get §-!>§() : Boolean
      {
         return this.§"!"§;
      }
   }
}
