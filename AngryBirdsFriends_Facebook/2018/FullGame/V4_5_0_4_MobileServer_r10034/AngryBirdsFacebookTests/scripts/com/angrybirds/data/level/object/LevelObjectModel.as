package com.angrybirds.data.level.object
{
   import com.angrybirds.engine.leveleventmanager.LevelEvent;
   import com.angrybirds.engine.objects.LevelObject;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class LevelObjectModel
   {
       
      
      public var instanceName:String;
      
      public var type:String = "";
      
      public var id:int = 0;
      
      public var x:Number = 0;
      
      public var y:Number = 0;
      
      public var z:Number;
      
      public var angle:Number = 0;
      
      public var themeTexture:String = "";
      
      public var front:Boolean = false;
      
      public var areaWidth:Number = 0.0;
      
      public var areaHeight:Number = 0.0;
      
      public var gravityFilter:int = -1;
      
      public var angularVelocity:Number = 0.0;
      
      private var mLinearForce:b2Vec2;
      
      public var angularDamping:Number = 0.0;
      
      public var linearDamping:Number = 0.0;
      
      public var awake:Boolean = false;
      
      public var health:Number = 0.0;
      
      private var mBehaviorsData:Vector.<LevelObjectModelBehaviorData>;
      
      private var mEvents:Vector.<LevelEvent>;
      
      public function LevelObjectModel()
      {
         this.z = LevelObject.Z_NOT_SET;
         super();
      }
      
      public function getAsSerializableObject() : Object
      {
         var behaviors:Array = null;
         var i:int = 0;
         var data:LevelObjectModelBehaviorData = null;
         var behaviorObject:Object = null;
         var events:Array = null;
         var j:int = 0;
         var event:LevelEvent = null;
         var eventObject:Object = null;
         var object:Object = new Object();
         object.x = this.x;
         object.y = this.y;
         object.z = this.z;
         object.angle = this.angle;
         object.front = this.front;
         object.uniqueID = this.id.toString();
         object.id = this.type;
         object.angularVelocity = this.angularVelocity;
         if(this.linearForce)
         {
            object.forceX = this.linearForce.x;
            object.forceY = this.linearForce.y;
         }
         object.angularDamping = this.angularDamping;
         object.linearDamping = this.linearDamping;
         object.awake = this.awake;
         object.health = this.health;
         if(this.mBehaviorsData)
         {
            behaviors = new Array();
            for(i = 0; i < this.mBehaviorsData.length; i++)
            {
               data = this.mBehaviorsData[i];
               behaviorObject = new Object();
               behaviorObject.type = data.type;
               behaviorObject.name = data.name;
               behaviorObject.event = data.event;
               behaviors.push(behaviorObject);
            }
            object.behaviors = behaviors;
         }
         if(this.mEvents)
         {
            events = new Array();
            for(j = 0; j < this.mEvents.length; j++)
            {
               event = this.mEvents[j];
               eventObject = new Object();
               eventObject.trigger = event.triggerType;
               eventObject.name = event.eventName;
               eventObject.parameters = event.data;
               events.push(eventObject);
            }
            object.events = events;
         }
         return object;
      }
      
      public function setBehaviorsData(behaviors:Vector.<LevelObjectModelBehaviorData>) : void
      {
         this.mBehaviorsData = behaviors;
      }
      
      public function setEvents(events:Vector.<LevelEvent>) : void
      {
         this.mEvents = events;
      }
      
      public function getBehaviorsData() : Vector.<LevelObjectModelBehaviorData>
      {
         return this.mBehaviorsData;
      }
      
      public function getEvents() : Vector.<LevelEvent>
      {
         return this.mEvents;
      }
      
      public function get hasSpecialBehavior() : Boolean
      {
         return this.mBehaviorsData != null;
      }
      
      public function get linearForce() : b2Vec2
      {
         return this.mLinearForce;
      }
      
      public function set linearForce(value:b2Vec2) : void
      {
         this.mLinearForce = value;
      }
   }
}
