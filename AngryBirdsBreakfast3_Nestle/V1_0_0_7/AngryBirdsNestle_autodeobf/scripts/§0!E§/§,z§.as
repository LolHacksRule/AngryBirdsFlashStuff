package §0!E§
{
   import §!!&§.§`!$§;
   import §"q§.§6,§;
   import §3@§.§=W§;
   import com.angrybirds.utils.§#!z§;
   import com.angrybirds.utils.§@>§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §,z§ extends EventDispatcher implements §#!z§
   {
      
      public static const §class§:Number = 30 * 60 * 1000;
       
      
      private var §`H§:String;
      
      private var §-!o§:Boolean;
      
      private var §4!=§:Boolean = true;
      
      private var §4!o§:Array;
      
      private var §&!Z§:int = -1;
      
      private var §<!@§:int = 1;
      
      private var §for §:Number = 0;
      
      public function §,z§(param1:String, param2:Boolean)
      {
         super();
         this.§`H§ = param1;
         this.§4!o§ = [];
         this.§-!o§ = param2;
         var _loc3_:int = 0;
         while(_loc3_ < 50)
         {
            this.§4!o§.push({
               "nickName":"",
               "score":"",
               "isPlayer":"false"
            });
            _loc3_++;
         }
      }
      
      public function §@-§() : void
      {
         this.§for § = 0;
         this.§4!=§ = true;
      }
      
      public function §!y§(param1:Boolean = false) : Boolean
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:§=W§ = null;
         var _loc6_:String = null;
         if(!this.§4!=§)
         {
            return false;
         }
         var _loc2_:Date = new Date();
         if(param1 || _loc2_.time - this.§for § > §class§)
         {
            this.§for § = _loc2_.time;
            if(this.§-!o§)
            {
               _loc6_ = §`!$§.§>!P§.§?""§();
            }
            _loc4_ = "highscore";
            if(§6,§.§!!7§)
            {
               if(_loc6_)
               {
                  _loc3_ = {
                     "levelId":this.§`H§,
                     "playerId":§6,§.§!!7§.id,
                     "type":_loc6_
                  };
               }
               else
               {
                  _loc3_ = {
                     "levelId":this.§`H§,
                     "playerId":§6,§.§!!7§.id
                  };
               }
            }
            else if(_loc6_)
            {
               _loc3_ = {
                  "levelId":this.§`H§,
                  "type":_loc6_
               };
            }
            else
            {
               _loc3_ = {"levelId":this.§`H§};
            }
            _loc5_ = new §=W§(_loc3_,AngryBirdsCustom.§9"+§ + _loc4_,this,§=W§.§"!x§);
            this.§4!=§ = false;
            return true;
         }
         return false;
      }
      
      public function §?S§() : void
      {
         ++this.§<!@§;
         if(this.§<!@§ > HighscoreSidebar.§2x§)
         {
            this.§<!@§ = 1;
         }
      }
      
      public function §%%§() : void
      {
         --this.§<!@§;
         if(this.§<!@§ < 1)
         {
            this.§<!@§ = HighscoreSidebar.§2x§;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §@>§.§&a§((param1.currentTarget as URLLoader).data);
         if(_loc2_.highScore is Array)
         {
            this.§4!o§ = _loc2_.highScore as Array;
         }
         this.§4!=§ = true;
         dispatchEvent(new §8D§(§8D§.§=!t§));
      }
      
      public function §9!@§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §@!2§(param1:IOErrorEvent) : void
      {
         this.§4!=§ = true;
      }
      
      public function get ready() : Boolean
      {
         return this.§4!=§;
      }
      
      public function get §0!B§() : Array
      {
         return this.§4!o§;
      }
      
      public function get levelId() : String
      {
         return this.§`H§;
      }
      
      public function get §]!=§() : int
      {
         return this.§<!@§;
      }
      
      public function get §'6§() : int
      {
         return this.§&!Z§;
      }
      
      public function get §0"!§() : Boolean
      {
         return this.§-!o§;
      }
   }
}
