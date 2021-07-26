package §,E§
{
   import §,!s§.b2internal;
   import §4"O§.b2Body;
   import §4"O§.b2DebugDraw;
   import §4"O§.b2TimeStep;
   import §4"O§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §-!l§:b2Controller;
      
      b2internal var §,p§:b2Controller;
      
      protected var §@"3§:b2ControllerEdge;
      
      protected var §9l§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function Step(param1:b2TimeStep) : void
      {
      }
      
      public function §6!e§(param1:b2DebugDraw) : void
      {
      }
      
      public function §8"#§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.§8I§ = this;
         _loc2_.body = param1;
         _loc2_.§<#e§ = this.§@"3§;
         _loc2_.§^>§ = null;
         this.§@"3§ = _loc2_;
         if(_loc2_.§<#e§)
         {
            _loc2_.§<#e§.§^>§ = _loc2_;
         }
         ++this.§9l§;
         _loc2_.§3",§ = param1.§^2§;
         _loc2_.§4!`§ = null;
         param1.§^2§ = _loc2_;
         if(_loc2_.§3",§)
         {
            _loc2_.§3",§.§4!`§ = _loc2_;
         }
         ++param1.§"$"§;
      }
      
      public function §+B§(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.§^2§;
         while(_loc2_ && _loc2_.§8I§ != this)
         {
            _loc2_ = _loc2_.§3",§;
         }
         if(_loc2_.§^>§)
         {
            _loc2_.§^>§.§<#e§ = _loc2_.§<#e§;
         }
         if(_loc2_.§<#e§)
         {
            _loc2_.§<#e§.§^>§ = _loc2_.§^>§;
         }
         if(_loc2_.§3",§)
         {
            _loc2_.§3",§.§4!`§ = _loc2_.§4!`§;
         }
         if(_loc2_.§4!`§)
         {
            _loc2_.§4!`§.§3",§ = _loc2_.§3",§;
         }
         if(this.§@"3§ == _loc2_)
         {
            this.§@"3§ = _loc2_.§<#e§;
         }
         if(param1.§^2§ == _loc2_)
         {
            param1.§^2§ = _loc2_.§3",§;
         }
         --param1.§"$"§;
         --this.§9l§;
      }
      
      public function §,n§() : void
      {
         while(this.§@"3§)
         {
            this.§+B§(this.§@"3§.body);
         }
      }
      
      public function §^"y§() : b2Controller
      {
         return this.§-!l§;
      }
      
      public function GetWorld() : b2World
      {
         return this.m_world;
      }
      
      public function §,#"§() : b2ControllerEdge
      {
         return this.§@"3§;
      }
   }
}
