package §4m§
{
   import §%!0§.§,4§;
   import §+V§.§&!O§;
   import §7t§.§7a§;
   import §7t§.§<^§;
   import §;" §.§5_§;
   import §;" §.§>"0§;
   import flash.display.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   
   public class §9g§ extends EventDispatcher
   {
       
      
      protected var §]B§:String = "";
      
      private var §#I§:Boolean = false;
      
      private var §#!M§:XML;
      
      private var §4"!§:Vector.<§>"0§>;
      
      protected var §4!K§:Boolean = false;
      
      protected var §<!$§:Vector.<§&!O§>;
      
      public function §9g§(param1:§,4§, param2:XML)
      {
         var _loc3_:XML = null;
         this.§4"!§ = new Vector.<§>"0§>();
         super();
         if(param2)
         {
            if(param2.hasOwnProperty("description"))
            {
               this.§]B§ = param2.description[0].toString();
            }
            for each(_loc3_ in param2.prompt)
            {
               this.§4"!§.push(new §>"0§(_loc3_));
            }
            this.§#!M§ = param2.inventory[0];
            this.§?!0§(param1,param2);
         }
      }
      
      public static function §2!3§(param1:§,4§, param2:XML) : §9g§
      {
         switch(param2["@type"].toString())
         {
            case "GhostObject":
               return new §3g§(param1,param2);
            case "Connected":
               return new §?Y§(param1,param2);
            case "Request":
               return new §8c§(param1,param2);
            default:
               return null;
         }
      }
      
      protected function §?!0§(param1:§,4§, param2:XML) : void
      {
         var _loc3_:XML = null;
         var _loc4_:§<^§ = null;
         var _loc5_:§<^§ = null;
         var _loc6_:§7a§ = null;
         this.§<!$§ = new Vector.<§&!O§>();
         for each(_loc3_ in param2.instruction)
         {
            if(_loc3_.hasOwnProperty("block"))
            {
               _loc4_ = new §<^§(param2.instruction.block.toString());
            }
            else
            {
               if(!_loc3_.hasOwnProperty("object"))
               {
                  throw new Error("Instruction didn\'t specify a proper block or object for the starting point.");
               }
               _loc6_ = §5_§.§<!v§(_loc3_.object.toString(),param1.objects);
               _loc4_ = new §<^§(_loc6_);
            }
            _loc5_ = new §<^§(new Point(_loc3_.x,_loc3_.y));
            this.§<!$§.push(new §&!O§(_loc4_,_loc5_));
         }
      }
      
      public function get §4q§() : XML
      {
         return this.§#!M§;
      }
      
      public function refresh(param1:§,4§) : void
      {
      }
      
      public function getHUDs() : Vector.<DisplayObject>
      {
         return new Vector.<DisplayObject>();
      }
      
      public function getNextInstruction() : DisplayObject
      {
         if(!this.§<!$§ || this.§<!$§.length == 0)
         {
            return null;
         }
         return !!this.isCompleted ? null : this.§<!$§[0];
      }
      
      public function update(param1:§,4§) : Boolean
      {
         return false;
      }
      
      public function isObjectNeeded(param1:§7a§) : Boolean
      {
         return false;
      }
      
      public function get description() : String
      {
         return this.§]B§;
      }
      
      public function get isCompleted() : Boolean
      {
         return this.§#I§;
      }
      
      public function set isCompleted(param1:Boolean) : void
      {
         this.§#I§ = param1;
      }
      
      public function §-!a§() : §>"0§
      {
         return this.§4"!§.length > 0 ? this.§4"!§.shift() : null;
      }
      
      public function dispose() : void
      {
      }
      
      public function onPhysicsEnabled() : void
      {
      }
   }
}
