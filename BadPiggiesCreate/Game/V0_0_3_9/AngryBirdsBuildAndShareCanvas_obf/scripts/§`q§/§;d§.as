package §`q§
{
   import §%%§.§7!O§;
   import §%%§.§<!z§;
   import §&"8§.§]!0§;
   import §=b§.§-!K§;
   import §]!]§.§4!Z§;
   import §]r§.§2"%§;
   import flash.display.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   
   public class §;d§ extends EventDispatcher
   {
       
      
      protected var §5!-§:String = "";
      
      private var §^r§:Boolean = false;
      
      private var §>!5§:XML;
      
      protected var §%"8§:Boolean = false;
      
      protected var §3!8§:Vector.<§4!Z§>;
      
      public function §;d§(param1:§-!K§, param2:XML)
      {
         super();
         if(param2)
         {
            if(param2.hasOwnProperty("description"))
            {
               this.§5!-§ = param2.description[0].toString();
            }
            this.§>!5§ = param2.inventory[0];
         }
         this.§#S§(param1,param2);
      }
      
      public static function §do §(param1:§-!K§, param2:XML) : §;d§
      {
         switch(param2["@type"].toString())
         {
            case "GhostObject":
               return new §#!t§(param1,param2);
            case "Connected":
               return new §&0§(param1,param2);
            case "Request":
               return new §]V§(param1,param2);
            default:
               return null;
         }
      }
      
      protected function §#S§(param1:§-!K§, param2:XML) : void
      {
         var _loc3_:XML = null;
         var _loc4_:§<!z§ = null;
         var _loc5_:§<!z§ = null;
         var _loc6_:§7!O§ = null;
         this.§3!8§ = new Vector.<§4!Z§>();
         for each(_loc3_ in param2.instruction)
         {
            if(_loc3_.hasOwnProperty("block"))
            {
               _loc4_ = new §<!z§(param2.instruction.block.toString());
            }
            else
            {
               if(!_loc3_.hasOwnProperty("object"))
               {
                  throw new Error("Instruction didn\'t specify a proper block or object for the starting point.");
               }
               _loc6_ = §]!0§.§,!L§(_loc3_.object.toString(),param1.objects);
               _loc4_ = new §<!z§(_loc6_);
            }
            _loc5_ = new §<!z§(new Point(_loc3_.x,_loc3_.y));
            this.§3!8§.push(new §4!Z§(_loc4_,_loc5_));
         }
      }
      
      public function get §]!7§() : XML
      {
         return this.§>!5§;
      }
      
      public function refresh(param1:§-!K§) : void
      {
      }
      
      public function getHUDs() : Vector.<DisplayObject>
      {
         return new Vector.<DisplayObject>();
      }
      
      public function getNextInstruction() : DisplayObject
      {
         if(!this.§3!8§ || this.§3!8§.length == 0)
         {
            return null;
         }
         return !!this.isCompleted ? null : this.§3!8§[0];
      }
      
      protected function §#!#§(param1:§7!O§, param2:§2"%§) : §7!O§
      {
         return §]!0§.§,!L§(param1.uniqueID,param2);
      }
      
      public function update(param1:§-!K§) : Boolean
      {
         return false;
      }
      
      public function isObjectNeeded(param1:§7!O§) : Boolean
      {
         return false;
      }
      
      public function get description() : String
      {
         return this.§5!-§;
      }
      
      public function get isCompleted() : Boolean
      {
         return this.§^r§;
      }
      
      public function set isCompleted(param1:Boolean) : void
      {
         this.§^r§ = param1;
      }
      
      public function dispose() : void
      {
      }
      
      public function onPhysicsEnabled() : void
      {
      }
   }
}
