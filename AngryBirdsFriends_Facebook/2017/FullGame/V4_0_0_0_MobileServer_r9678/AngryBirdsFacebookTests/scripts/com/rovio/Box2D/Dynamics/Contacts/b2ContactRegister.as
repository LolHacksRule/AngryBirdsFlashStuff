package com.rovio.Box2D.Dynamics.Contacts
{
   public class b2ContactRegister
   {
       
      
      public var createFcn:Function;
      
      public var destroyFcn:Function;
      
      public var primary:Boolean;
      
      public var pool:b2Contact;
      
      public var poolCount:int;
      
      public function b2ContactRegister()
      {
         super();
      }
   }
}
